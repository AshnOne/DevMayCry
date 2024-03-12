/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_DEVMAYCRY_TAB_H_INCLUDED
# define YY_YY_DEVMAYCRY_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IF = 258,
     ELSE = 259,
     SWITCH = 260,
     CASE = 261,
     MAIN = 262,
     RETURN = 263,
     REMOVE = 264,
     TYPEDEF = 265,
     INCLUDE = 266,
     DEFINE = 267,
     PARENTESES_esq = 268,
     PARENTESES_dir = 269,
     CHAVES_esq = 270,
     CHAVES_dir = 271,
     COLCHETES_esq = 272,
     COLCHETES_dir = 273,
     ASPAS = 274,
     FOR = 275,
     WHILE = 276,
     DO = 277,
     BREAK = 278,
     PRINTF = 279,
     SCANF = 280,
     FSCANF = 281,
     FPRINTF = 282,
     SIZEOF = 283,
     MALLOC = 284,
     STRUCT = 285,
     FLOAT = 286,
     INT = 287,
     DOUBLE = 288,
     CHAR = 289,
     STRING = 290,
     VOID = 291,
     LONG = 292,
     ADD = 293,
     SUB = 294,
     ATRIB = 295,
     DIV = 296,
     MULT = 297,
     RESTO = 298,
     VIRGULA = 299,
     AND = 300,
     OR = 301,
     NOT = 302,
     PT_VRG = 303,
     ATRIB_ADD = 304,
     ATRIB_SUB = 305,
     ATRIB_DIV = 306,
     ATRIB_MULT = 307,
     ATRIB_REST = 308,
     EQUAL = 309,
     MAIOR_EQUAL = 310,
     MENOR_EQUAL = 311,
     DIFERENTE = 312,
     MAIOR = 313,
     MENOR = 314,
     LETRA = 315,
     DIGITO = 316,
     NUMERO = 317,
     STRING_val = 318,
     IDENTIFICADOR = 319,
     END = 320,
     ENDL = 321
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_DEVMAYCRY_TAB_H_INCLUDED  */
