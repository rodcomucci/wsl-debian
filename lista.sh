#!/bin/sh
#
#==============================================================================
#script.....:   lista.sh
#location...:   ~/.scripts/
#description:   Script de listagem para subnível de diretórios
#author.....:   Rodrigo Limão
#created....:   2022-09-23
#version....:   1.0
#shell......:   GNU bash, version 5.1.4(1)-release
#------------------------------------------------------------------------------
#notes:
#   Para usar o alias 'ln' precisa cirar uma linha nos arquivos ~/.bashrc:
#       alias ln="sh ~/.scripts/lista.sh"
#
#examples:
#   sh ~/.scripts/lista.sh <numero_de_niveis>
#   ln <numero_de_niveis>
#==============================================================================

if [ $# -eq 0 ]; then
    echo "ok" 
fi


#tipo=$1 # argumento do tipo de listagem ()
#nivel=$1 # variável nivel recebe o primeiro (e único) parâmetro com a quantidade de níveis desejada

## verifica se foi passado algum argumento
#if [ $# -gt 0 ] then
    ## verifica se o nivel é numérico
    #x='^[0-9]+$'
    #if ! [[ $nivel =~ $x ]]; then
        #echo "Erro: $nivel não é numérico!"
        #exit
    #fi

    ## verifica se o nivel é maior ou igual que zero
    #if [ $nivel -ge 0 ]; then
        #echo "Erro: $nivel é maior ou igual a zero!"
        #exit
    #fi
#fi

  
#old_owner=$(stat -c "%U" $log)
#old_group=$(stat -c "%G" $log)

#sudo chown $USER:$USER $log
#cat /dev/null > $log
#sudo chown $old_owner:$old_group $log

#x=$(cat "$log")

#if [ "$x" = "" ]; then
    #echo "$log apagado com sucesso!"
#else
    #echo "Não foi possível apagar $log"
#fi

