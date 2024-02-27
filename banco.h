#ifndef BANCO_H
#define BANCO_H

#include<stdio.h>
#include<stdlib.h>

#define TAM 51
typedef struct no{
    char nome[TAM];
    char token[TAM];
    int line;
    char tipo_erro[TAM];
    struct no* prox;
}Banco;

Banco* tab;
Banco* tabId;

Banco* cria_banco_vazio();

Banco* insert_banco(Banco* tab, char* nome, char* token, char* tipo_erro, int l);

void analise_lexica(Banco* tab);

void free_list(Banco* tab);

#endif // BANCO_H