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
     FOR = 274,
     WHILE = 275,
     DO = 276,
     BREAK = 277,
     PRINTF = 278,
     SCANF = 279,
     FSCANF = 280,
     FPRINTF = 281,
     SIZEOF = 282,
     MALLOC = 283,
     STRUCT = 284,
     FLOAT = 285,
     INT = 286,
     DOUBLE = 287,
     CHAR = 288,
     VOID = 289,
     LONG = 290,
     ADD = 291,
     SUB = 292,
     ATRIB = 293,
     DIV = 294,
     MULT = 295,
     RESTO = 296,
     AND = 297,
     OR = 298,
     NOT = 299,
     ATRIB_ADD = 300,
     ATRIB_SUB = 301,
     ATRIB_DIV = 302,
     ATRIB_MULT = 303,
     ATRIB_REST = 304,
     EQUAL = 305,
     MAIOR_EQUAL = 306,
     MENOR_EQUAL = 307,
     DIFERENTE = 308,
     MAIOR = 309,
     MENOR = 310,
     LETRA = 311,
     DIGITO = 312,
     NUMERO = 313,
     IDENTIFICADOR = 314,
     END = 315
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
