#! /bin/bash
echo -e "\n"
echo -e "############# INICIANDO SCRIPT DE CRIAÇÃO #############\n"

echo -e "1) Criando diretórios:"
mkdir /home/GRUPOS
chmod 705 /home/GRUPOS
mkdir /home/GRUPOS/publico /home/GRUPOS/adm /home/GRUPOS/ven /home/GRUPOS/sec
chmod 770 /home/GRUPOS/adm
chmod 770 /home/GRUPOS/ven
chmod 770 /home/GRUPOS/sec
echo -e "Diretórios criados com sucesso!\n"

echo -e "2) Criando novos grupos:"
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC
echo -e "Grupos criados com sucesso!\n"

echo -e "3) Criando novos usuários:"
useradd carlos -s /bin/bash -m -p$(openssl passwd 123) -G GRP_ADM
useradd maria -s /bin/bash -m -p$(openssl passwd 123) -G GRP_ADM
useradd joao -s /bin/bash -m -p$(openssl passwd 123) -G GRP_ADM
useradd debora -s /bin/bash -m -p$(openssl passwd 123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p$(openssl passwd 123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p$(openssl passwd 123) -G GRP_VEN
useradd josefina -s /bin/bash -m -p$(openssl passwd 123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p$(openssl passwd 123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p$(openssl passwd 123) -G GRP_SEC
echo -e "Usuários criados com sucesso:\n"

echo -e "4) Dando permissão total para todos os usuários no diretório Publico:"
chmod 777 /home/GRUPOS/publico
echo -e "Permissão concedida!\n"

echo -e "5) Concedendo permissão total aos usuários nos seus respsctivos grupos:"
chown root:GRP_ADM /home/GRUPOS/adm
chown root:GRP_VEN /home/GRUPOS/ven
chown root:GRP_SEC /home/GRUPOS/sec
echo -e "Grupos relacionados aos seus respectivos diretórios!"


echo -e "\n"
echo -e "############# FIM SCRIPT DE CRIAÇÃO ##################\n"
