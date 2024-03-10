%{
    #include <stdio.h>
    #include <string.h>
    #include "banco.h"
    #include "DevMayCry.tab.h"
    #include "read_file.h"
    #include "interface.h"
    extern int yylex();
    extern FILE *yyin;


    int yylex(void);
    void yyerror(char*);
   extern int count;
    FILE *arquivo; 
 
%}

%token IF 
%token ELSE 
%token SWITCH 
%token CASE

%token MAIN 
%token RETURN 
%token REMOVE 
%token TYPEDEF 
%token INCLUDE 
%token DEFINE 

%token PARENTESES_esq
%token PARENTESES_dir
%token CHAVES_esq 
%token CHAVES_dir 
%token COLCHETES_esq
%token COLCHETES_dir

%token FOR 
%token WHILE 
%token DO 
%token BREAK 

%token PRINTF 
%token SCANF 
%token FSCANF 
%token FPRINTF 
%token SIZEOF 
%token MALLOC 

%token STRUCT 
%token FLOAT 
%token INT 
%token DOUBLE 
%token CHAR 
%token VOID
%token LONG 

%token ADD 
%token SUB 
%token ATRIB 
%token DIV 
%token MULT 
%token RESTO 

%token AND 
%token OR 
%token NOT 

%token ATRIB_ADD 
%token ATRIB_SUB 
%token ATRIB_DIV 
%token ATRIB_MULT 
%token ATRIB_REST 

%token EQUAL 
%token MAIOR_EQUAL
%token MENOR_EQUAL 
%token DIFERENTE 
%token MAIOR 
%token MENOR 

%token LETRA 

%token DIGITO
%token NUMERO 

%token IDENTIFICADOR
%left END OR NOT



%token ENDL


%%

bloco:          CHAVES_esq program CHAVES_dir {printf("bloco\n");}
        ;


headers:
    INCLUDE IDENTIFICADOR   {printf("Biblioteca incluida\n");}
    | DEFINE IDENTIFICADOR NUMERO {printf("Constante definida\n");}
    | TYPEDEF STRUCT bloco IDENTIFICADOR {printf("Struct declarada\n");}  
    ;

/*program: 
    program expr '\n'       { printf("Resultado\n"); }
    |                       
    ;
*/
loop_for:       FOR PARENTESES_esq expr PT_VRG expr PT_VRG expr PARENTESES_dir bloco {printf("for ok\n");}
        ;


loop_while:     
      WHILE PARENTESES_esq expr PARENTESES_dir bloco    {printf("while\n");}
    | DO bloco WHILE PARENTESES_esq expr PARENTESES_dir          
    ;


condicional_if:    IF CHAVES_esq expr CHAVES_dir bloco               {printf("if\n");}
        |       IF CHAVES_esq expr CHAVES_dir bloco ELSE bloco    {printf("if else\n");}
        ;

condicional_switch:
    SWITCH PARENTESES_esq expr PARENTESES_dir case {printf("Switch\n");}
;

case:
    CASE NUMERO bloco case {printf("Case\n");}
    |
    ;

expr:
  
      expr ATRIB_ADD expr   { printf("Fiz uma atribuicao de soma\n"); }
    | expr ATRIB_DIV expr   { printf("Fiz uma atribuicao de divisao\n"); }
    | expr ATRIB_MULT expr  { printf("Fiz uma atribuicao de multiplicacao\n"); }
    | expr ATRIB_REST expr  { printf("Fiz uma atribuicao de resto\n"); }
    | expr ATRIB_SUB expr   { printf("Fiz uma atribuicao de subtracao\n"); }
    | expr ADD expr         { printf("Fez uma soma\n"); }
    | expr SUB expr         { printf("Fez uma subtracao\n"); }
    | expr ATRIB expr       { printf("Fiz uma atribuicao\n"); }
    | expr DIV expr         { printf("Fiz uma divisao\n"); }
    | expr MULT expr        { printf("Fiz uma multiplicacao\n"); }
    | expr RESTO expr       { printf("Fiz uma operacao de resto\n"); }
    | expr AND expr         { printf("Fiz uma expressao logica AND\n"); }
    | expr OR expr          { printf("Fiz uma expressao logica OR\n"); }
    | NOT expr              { printf("Fiz uma expressao logica NOT\n"); }
    | expr EQUAL expr       { printf("Fiz uma expressao logica IGUAL\n"); }
    | expr MAIOR_EQUAL expr { printf("Fiz uma expressao logica MAIOR OU IGUAL\n"); }
    | expr MENOR_EQUAL expr { printf("Fiz uma expressao logica MENOR OU IGUAL\n"); }
    | expr DIFERENTE expr   { printf("Fiz uma expressao logica DIFERENTE\n"); }
    | expr MAIOR expr       { printf("Fiz uma expressao logica MAIOR\n"); }
    | expr MENOR expr       { printf("Fiz uma expressao logica MENOR\n"); }
    | NUMERO                { printf("Achei um inteiro\n"); }
    | IDENTIFICADOR         { printf("Achei um Identificador\n"); }
    ;
%%

void yyerror(char* s){
    printf("Erro: %s na linha %d\n", s, count);
}

int main(){
    int op;
        opcoes();
        scanf("%d%*c", &op);
        if(op){
            yyin = load_file();
            
            yyparse();
            yylex();
            
            opcao2();
            int op2;
            scanf("%d%*c", &op2);
            if(op2){ 
                
                
                analise_lexica(tab);
                analise_lexica(tabId);
            }
            
            free_list(tab);
            }
	return 0;
}