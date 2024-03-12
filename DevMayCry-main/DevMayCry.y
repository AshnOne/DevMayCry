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
%token ASPAS

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
%token STRING
%token VOID
%token LONG 

%token ADD 
%token SUB 
%token ATRIB 
%token DIV 
%token MULT 
%token RESTO 
%token VIRGULA

%token AND 
%token OR 
%token NOT
%token PT_VRG

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
%token STRING_val

%token IDENTIFICADOR
%left END OR NOT



%token ENDL


%%

programa:       includes funcoes{printf("includes\n");}
        ;

includes:        include includes {}
        |       {}
        ;

include:         inc id  {printf("include\n"); }
        ;

parametros:     parametro {printf("parametro\n"); }
        |        {printf("nada\n"); }
        ;

parametro:      tipo id vrg parametro   {printf("+param\n"); }
        |       tipo id                 {printf("ult param\n"); }
        ;

funcoes:        funcao funcoes {printf("+func\n"); }
        |       {printf("sem func\n"); }
        ;

funcao:         tipo main simb_PARENTESES_esq parametros simb_PARENTESES_dir bloco {printf("func com param\n");}
        ;

bloco:          simb_CHAVES_esq comandos simb_CHAVES_dir {printf("bloco\n"); }
        ;

comandos:       declaracao pt_v comandos     {printf("decl com mais\n"); }
        |       declaracao pt_v              {printf("decl\n");}
        ;

declaracao:     tipo id                         {printf("declarou var\n"); }
        |       tipo atribuicao                 {printf("declarou int e atribuiu\n"); }
        |       atribuicao                      {printf("atribuiu\n"); }
        |       condicional                     {printf("condicional\n");}
        |       loop_while                      {printf("while\n"); }
        |       loop_for                        {printf("for\n"); }
        |       expressao                       {printf("expressao\n"); }
        ;

atribuicao:     id simb_atrib expressao {printf("atribuiu ao id expr\n"); }
        ;


condicional:    simb_if simb_PARENTESES_esq expressao simb_PARENTESES_dir  bloco               {printf("if\n"); }
        |       simb_if simb_PARENTESES_esq expressao simb_PARENTESES_dir  bloco simb_else bloco    {printf("if else\n"); }
        ;


loop_while:     simb_while simb_PARENTESES_esq expressao simb_PARENTESES_dir bloco    {printf("while ok\n"); }
        ;

loop_for:       simb_for simb_PARENTESES_esq expressao pt_v expressao pt_v expressao simb_PARENTESES_dir bloco {printf("for ok\n");}
        ;

expressao:      exp_logica  {printf("exp logica\n"); }
        |       exp_comp    {printf("exp comp\n"); }
        |       exp_simples {printf("exp simples\n");}
        |       fator       {printf("fator\n"); }
        ;

exp_logica:     expressao simb_exp_logica expressao {printf("exp_logica\n");}
        |       simb_not expressao {printf("printf exp_not\n"); }
        ;

exp_comp:       expressao simb_exp_comp expressao {printf("exp_cmp\n");}
        ;

exp_simples:    expressao simb_exp_simples expressao {printf("exp simples\n");}
        ;

argumentos:     argumento  {}
        |       {}
        ;

argumento:      id vrg argumento  {}
        |       id {}
        ;

fator:          num { printf("num \n"); }
        |       string { printf("str \n");}
        |       id   {}
        |       simb_PARENTESES_esq expressao simb_PARENTESES_dir    {printf("()\n"); }
        |       id simb_PARENTESES_esq argumentos simb_PARENTESES_dir {printf("chamando func\n"); }
        ;



simb_exp_simples:       ADD      {printf("+\n"); }
        |               SUB  {printf("+\n"); }
        |               DIV   {printf("/\n"); }
        |               MULT      {printf("\n"); }
        ;
simb_exp_comp:          MAIOR_EQUAL  {printf(">=\n"); }
        |               MENOR_EQUAL  {printf("<=\n"); }
        |               MAIOR  {printf(">\n"); }
        |               MENOR  {printf("<\n");}
        |               EQUAL  {printf("==\n"); }
        |               DIFERENTE  {printf("!=\n"); }
        ;
simb_exp_logica:        AND   {printf("&&\n"); }
        |               OR   {printf("||\n"); }
        |               
        ;
simb_not:               NOT {printf("!\n"); }
        ;
simb_while:             WHILE{}
        ;
simb_for:               FOR{printf("for\n");}
        ;
simb_if:                IF{printf("if\n");}
        ;

        ;
simb_else:              ELSE{printf("else\n");}
        ;
simb_atrib:             ATRIB{printf("atrib\n");}
        ;
simb_PARENTESES_esq:          PARENTESES_esq {printf("(\n");}
        ;
simb_PARENTESES_dir:         PARENTESES_dir {printf(")\n");}
        ;
simb_CHAVES_esq:          CHAVES_esq {printf("{\n");}
        ;
simb_CHAVES_dir:         CHAVES_dir {printf("}\n");}
        ;
num:                NUMERO {printf("num\n");}
        ;
string:
                        STRING_val {printf("valor String\n");}
        ;
id:                     IDENTIFICADOR {printf("id\n"); }
        ;
main:                   MAIN {printf("main\n");}
        ;
pt_v:                   PT_VRG {printf(";\n"); }
        ;
tipo:                   INT                     {printf("int\n");}
        |               FLOAT                   {printf("float\n");}
        |               STRING                  {printf("String\n");}
        ;



      

vrg:                    VIRGULA {printf(",\n");}
        ;
inc:                    INCLUDE {printf("inc\n"); }
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