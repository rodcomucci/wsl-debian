#!/bin/sh
#
#==============================================================================
#script.....:   zeralog.sh
#location...:   ~/.scripts/
#description:   Script para zerar o conteúdo dos arquivos de log
#author.....:   Rodrigo Limão
#created....:   2022-08-16
#version....:   1.0
#shell......:   GNU bash, version 5.1.4(1)-release
#------------------------------------------------------------------------------
#notes:
#   Para usar o alias 'zlog' precisa cirar uma linha nos arquivos ~/.bashrc:
#       alias zlog="sh ~/.scripts/zeralog.sh"
#
#examples:
#   sh ~/.scripts/zeralog.sh <caminho_do_arquivo>
#   zlog <caminho_do_arquivo>
#==============================================================================

log=$1 # variável log recebe o primeiro (e único) parâmetro que é o nome do arguivo de log

# verifica se o arquivo existe
if [ ! -f "$log" ]; then
    echo "Erro: $log não encontrado!"
    exit
fi

# verifica a extensão do arquivo
if [ "${log#*.}" != "log" ]; then
    echo "Erro: $log não é um arquivo de LOG ou não termina com .log!"
    exit
fi

# verifica se o arquivo está vazio
x=$(cat "$log")
if [ "$x" = "" ]; then
    echo "Atenção: $log já está vazio!"
    exit
fi

old_owner=$(stat -c "%U" $log)
old_group=$(stat -c "%G" $log)

sudo chown $USER:$USER $log
cat /dev/null > $log
sudo chown $old_owner:$old_group $log

x=$(cat "$log")

if [ "$x" = "" ]; then
    echo "$log apagado com sucesso!"
else
    echo "Não foi possível apagar $log"
fi

