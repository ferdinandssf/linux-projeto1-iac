#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."

useradd pedro -m -c "Pedro Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd paulo -m -c "Paulo Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd peter -m -c "Peter Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd lucas -m -c "Lucas Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd luiz -m -c "Luiz Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd leandro -m -c "Leandro Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd bruno -m -c "Bruno Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd brendo -m -c "Brendo Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd breno -m -c "Breno Henrique" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim.."
