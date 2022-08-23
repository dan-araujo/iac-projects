#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /sales
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd silvana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd daniela -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SALES
useradd bastos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SALES
useradd sebastian -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SALES

useradd rafael -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd daniel -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd oliver -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Especificando as permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "Feito..."

