#include<stdio.h>
#include<string.h>
#include "read_file.h"


void read_name(char name[]){
    printf("Digite o nome do arquivo.\n");
    scanf("%[^\n]%*c", name);
}


FILE* load_file(){
    char str[51];

    read_name(str);

    return fopen(str, "r");;
}