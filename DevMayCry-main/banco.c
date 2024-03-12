#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include "banco.h"

Banco* cria_banco_vazio(){
    Banco* banco = (Banco*) malloc(sizeof(Banco));
    banco->prox = NULL;
    return banco;
}

Banco* insert_banco(Banco* tab, char* nome, char* token, char* tipo_erro, int l){
    Banco* no = (Banco*)malloc(sizeof(Banco));
    strcpy(no->nome, nome);
    strcpy(no->token, token);
    strcpy(no->tipo_erro, tipo_erro);
    no->line = l;

    if(tab == NULL){
        no->prox = NULL;
        tab = no;
    }else{
        Banco* aux = tab;
        while(aux->prox != NULL){
            aux = aux->prox;
        }
        no->prox = NULL;
        aux->prox = no;
    }
    return tab;
}

void analise_lexica(Banco* tab){
    if(tab != NULL){
        if(strlen(tab->tipo_erro) != 0) printf("Lexema: %s\nToken: %s\nErro: %s\nLinha: %d\n\n", tab->nome, tab->token, tab->tipo_erro, tab->line);
        else printf("Lexema: %s\nToken: %s\nLinha: %d\n\n", tab->nome, tab->token, tab->line);
        analise_lexica(tab->prox);
    }
}

void free_list(Banco* tab){
    if(tab != NULL){
        free_list(tab->prox);
        free(tab);
    }
}