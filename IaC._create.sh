#!/bin/ban
echo "Criação dos Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Usuários ADM\VEN\SEC"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_VEN
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Password01) -G GRP_SEC

echo "Criação de permissões dos diretórios ADM\VEN\SEC"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"