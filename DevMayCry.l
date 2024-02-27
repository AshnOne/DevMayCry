%{
//1ª)Definições
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "banco.h"
#include "interface.h"
#include "read_file.h"

int count = 1;

%}
%option noyywrap


IF (whatIf)
ELSE (NuUh)
SWITCH (change)
CASE (case)

MAIN (ThisPartysGettingCrazy)
RETURN (jackpot)
REMOVE (flockOff)
TYPEDEF (CatchThis)
INCLUDE (#TakeThis)
DEFINE (#GetSet)

PARENTESES_esq "("
PARENTESES_dir ")"
CHAVES_esq "{"
CHAVES_dir "}"
COLCHETES_dir "["
COLCHETES_esq "]"

FOR (ShallWeDance)
WHILE (Fire)
DO (ComeOn)
BREAK (SILENCE)

PRINTF (ItsShowTime)
SCANF (WhatYouSay)
FSCANF (fWhatYouSay)
FPRINTF (fItsShowTime)
SIZEOF (sizeof)
MALLOC (malloc)

STRUCT (struct)
FLOAT (float)
INT (int)
DOUBLE (double)
CHAR (char)
VOID (void)
LONG (long)

ADD ("+")
SUB ("-")
ATRIB ("=")
DIV ("/")
MULT ("*")
RESTO ("%")

AND (&&)
OR ("||")
NOT ("!")

ATRIB_ADD ("+=")
ATRIB_SUB ("-=")
ATRIB_DIV ("/=")
ATRIB_MULT ("*=")
ATRIB_REST ("%=")

EQUAL ("==")
MAIOR_EQUAL (">=")
MENOR_EQUAL ("<=")
DIFERENTE ("!=")
MAIOR (">")
MENOR ("<")

LETRA [a-zA-Z_]

DIGITO [0-9]
NUMERO {DIGITO}+|{DIGITO}+.{DIGITO}+

IDENTIFICADOR {LETRA}({LETRA}|{DIGITO})*


ERROVAR {DIGITO}+{LETRA}+({DIGITO}|{LETRA})*
ERROARROBA ({LETRA}|{DIGITO})*("@")({LETRA}|{DIGITO})*
ERRONUM {DIGITO}+.

%%
	//2ª)Regras


" "                 {                           }

{MAIN}              {
                        tab = insert_banco(tab, yytext, "function_ThisPartysGettingCrazy", "\0", count);
                        //return MAIN;
                    }

"BEGONE"            {
                        return 0;
                    }

{NUMERO}            {
                        tab = insert_banco(tab, yytext, "enum", "\0", count);
                        //return NUMERO;
                        
                    }
                    
{RETURN}		    { 
                        tab = insert_banco(tab, yytext, "keyword_jackpot", "\0", count);
                        //return RETURN;
                    }

{REMOVE}            {
                        tab = insert_banco(tab, yytext, "keyword_flockOff", "\0", count); 
                        //return REMOVE;
                    }

{TYPEDEF}           {
                        tab = insert_banco(tab, yytext, "keyword_CatchThis", "\0", count);
                        //return TYPEDEF;
                    }

{INCLUDE}           {
                        tab = insert_banco(tab, yytext, "keyword_TakeThis", "\0", count);
                        //return INCLUDE;
                    }

{DEFINE}            {
                        tab = insert_banco(tab, yytext, "keyword_GetSet", "\0",count);
                        //return DEFINE;
                    }

{IF}                {
                        tab = insert_banco(tab, yytext, "conditional_whatif", "\0", count);
                        //return IF;
                    }

{ELSE}              {
                        tab = insert_banco(tab, yytext, "conditional_NuUh", "\0", count);
                        //return ELSE;
                    }

{SWITCH}            {
                        tab = insert_banco(tab, yytext, "conditional_change", "\0", count);
                        //return SWITCH;
                    }

{CASE}              {
                        tab = insert_banco(tab, yytext, "conditional_case", "\0", count);
                        //return CASE;
                    }

{FOR}               {
                        tab = insert_banco(tab, yytext, "repetition_ShallWeDance", "\0", count);
                        //return FOR;
                    }

{WHILE}             {
                       tab = insert_banco(tab, yytext, "repetition_Fire", "\0", count);
                       //return WHILE;
                    }

{DO}                {
                        tab = insert_banco(tab, yytext, "repetition_ComeOn", "\0", count);
                        //return DO;
                    }

{BREAK}             {
                        tab = insert_banco(tab, yytext, "repetition_SILENCE", "\0", count);
                        //return BREAK;
                    }                    

{PRINTF}            {
                        tab = insert_banco(tab, yytext, "function_ItsShowTime", "\0", count);
                        //return PRINTF;
                    }
{SCANF}             {
                        tab = insert_banco(tab, yytext, "function_WhatYouSay", "\0", count);
                        //return SCANF;
                    }

{FSCANF}            {
                        tab = insert_banco(tab, yytext, "function_fWhatYouSay", "\0", count);
                        //return FSCANF;
                    }

{FPRINTF}           {
                        tab = insert_banco(tab, yytext, "function_fItsShowTime", "\0", count);
                        //return FPRINTF;
                    }

{SIZEOF}            {
                        tab = insert_banco(tab, yytext, "function_sizeof", "\0", count);
                        //return SIZEOF;
                    }  

{MALLOC}            {
                        tab = insert_banco(tab, yytext, "function_malloc", "\0", count);
                        //return MALLOC;
                    }

{STRUCT}            {
                        tab = insert_banco(tab, yytext, "type_struct", "\0", count);
                        //return STRUCT;
                    }

{VOID}              {
                        tab = insert_banco(tab, yytext, "type_void", "\0", count);
                        //return VOID;
                    }

{INT}               {
                        tab = insert_banco(tab, yytext, "type_int", "\0", count);
                        //return INT;
                    }

{FLOAT}             {
                        tab = insert_banco(tab, yytext, "type_float", "\0", count);
                        //return FLOAT;
                    }

{DOUBLE}            {
                        tab = insert_banco(tab, yytext, "type_double", "\0", count);
                        //return DOUBLE;
                    }

{CHAR}              {
                        tab = insert_banco(tab, yytext, "type_char", "\0", count);
                        //return CHAR;
                    }

{LONG}              {
                        tab = insert_banco(tab, yytext, "type_long", "\0", count);
                        //return RETURN;
                    }

{ADD}               {
                        tab = insert_banco(tab, yytext, "operator_add", "\0", count);
                        //return ADD;
                    }

{SUB}               {
                        tab = insert_banco(tab, yytext, "operator_sub", "\0", count);
                        //return SUB;
                    }

{ATRIB}             {
                        tab = insert_banco(tab, yytext, "atribuicao", "\0", count);
                        //return ATRIB;
                    }

{DIV}               {
                        tab = insert_banco(tab, yytext, "operator_div", "\0", count);
                        //return DIV;
                    }

{MULT}              {
                        tab = insert_banco(tab, yytext, "operator_mult", "\0", count);
                        //return MULT;
                    }

{RESTO}             {
                        tab = insert_banco(tab, yytext, "operator_rest", "\0", count);
                        //return RESTO;
                    }

{AND}               {
                        tab = insert_banco(tab, yytext, "operator_and", "\0", count);
                        //return AND;
                    }

{OR}                {
                        tab = insert_banco(tab, yytext, "operator_or", "\0", count);
                        //return OR;
                    }

{NOT}               {
                        tab = insert_banco(tab, yytext, "operator_not", "\0", count);
                        //return NOT;
                    }

{PARENTESES_esq}        {
                        tab = insert_banco(tab, yytext, "simb_parentheses_esq", "\0", count);
                        //return PARENTESES_esq;
                    }
{PARENTESES_dir}        {
                        tab = insert_banco(tab, yytext, "simb_parentheses_dir", "\0", count);
                        //return PARENTESES_dir;
                    }

{CHAVES_dir}            {
                        tab = insert_banco(tab, yytext, "simb_keys_dir", "\0", count);
                        //return CHAVES_dir;
                    }
{CHAVES_esq}            {
                        tab = insert_banco(tab, yytext, "simb_keys_esq", "\0", count);
                        //return CHAVES_esq;
                    }

{COLCHETES_esq}         {
                        tab = insert_banco(tab, yytext, "simb_brackets_esq", "\0", count);
                        //return COLCHETES_esq;
                    }
{COLCHETES_dir}         {
                        tab = insert_banco(tab, yytext, "simb_brackets_dir", "\0", count);
                        //return COLCHETES_dir;
                    }

{EQUAL}             {
                        tab = insert_banco(tab, yytext, "equal_comparator", "\0", count);
                        //return EQUAL;
                    }

{MAIOR_EQUAL}       {
                        tab = insert_banco(tab, yytext, "greaterequal_comparator", "\0", count);
                        //return MAIOR_EQUAL;
                    }

{MENOR_EQUAL}       {
                        tab = insert_banco(tab, yytext, "lessequal_comparator", "\0", count);
                        //return MENOR_EQUAL;
                    }

{DIFERENTE}         {
                        tab = insert_banco(tab, yytext, "notequal_comparator", "\0", count);
                        //return DIFERENTE;
                    }

{MAIOR}             {
                        tab = insert_banco(tab, yytext, "greater_comparator", "\0", count);
                        //return MAIOR;
                    }

{MENOR}             {
                        tab = insert_banco(tab, yytext, "less_comparator", "\0", count);
                        //return MENOR;
                    }

{ATRIB_ADD}         {
                        tab = insert_banco(tab, yytext, "accumulator_add", "\0", count);
                        //return ATRIB_ADD;
                    }

{ATRIB_SUB}         {
                        tab = insert_banco(tab, yytext, "accumulator_sub", "\0", count);
                        //return ATRIB_SUB;
                    }

{ATRIB_DIV}         {
                        tab = insert_banco(tab, yytext, "accumulator_div", "\0", count);
                        //return ATRIB_DIV;
                    }

{ATRIB_MULT}        {
                        tab = insert_banco(tab, yytext, "accumulator_mult", "\0", count);
                        //return ATRIB_MULT;
                    }

{ATRIB_REST}        {
                        tab = insert_banco(tab, yytext, "accumulator_rest", "\0", count);
                        //return ATRIB_REST;
                    }
                    
"TakeThis"          {
                        
                        printf("Lexema: %s\nToken: %s\nWhy isn't this working? Is there something missing? Must more blood be shed?\nErro: %s\nLinha: %d\n\n", yytext, "erro_include", "Missing #", count);
                    }

"GetSet"            {
                        
                        printf("Lexema: %s\nToken: %s\nWhy isn't this working? Is there something missing? Must more blood be shed?\nErro: %s\nLinha: %d\n\n", yytext, "erro_define", "Missing #", count);
                    }

{ERROVAR}           {
                        
                        printf("Lexema: %s\nToken: %s\nWhy isn't this working? Is there something missing? Must more blood be shed?\nErro: %s\nLinha: %d\n\n", yytext, "erro_var", "Wrong format", count);
                    }

{ERROARROBA}        {
                       
                        
                        printf("Lexema: %s\nToken: %s\nWhy isn't this working? Is there something missing? Must more blood be shed?\nErro: %s\nLinha: %d\n\n", yytext, "erro_var", "@ is not used for Ids", count);
                    }

{ERRONUM}           {
                        
                        printf("Lexema: %s\nToken: %s\nWhy isn't this working? Is there something missing? Must more blood be shed?\nErro: %s\nLinha: %d\n\n", yytext, "erro_num", "Wrong format", count);
                    }

{IDENTIFICADOR}     {
                        tabId = insert_banco(tabId, yytext, "id", "\0", count);
                    }
                
"\n"                {
                        count++;
                    }
%%

int main(){
    int op;
        opcoes();
        scanf("%d%*c", &op);
        if(op){
            yyin = load_file();

            yylex();
            opcao2();
            int op2;
            scanf("%d%*c", &op2);
            if(op2){ 
                analise_lexica(tab);
                analise_lexica(tabId);
            }
            count = 1;
            free_list(tab);
            }
	return 0;
}
