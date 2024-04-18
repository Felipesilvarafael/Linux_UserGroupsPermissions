#! /bin/bash
echo -e "\n"
echo -e "############# INICIANDO SCRIPT DE EXCLUSÃO #############\n"

rm -R /home/GRUPOS
echo -e "1) Diretórios excluidos!\n"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC 
echo -e "2) Grupos excluidos!\n"


userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo -e "3) Usuários excluidos!\n"

echo -e "############# FIM SCRIPT DE EXCLUSÃO #############\n"

