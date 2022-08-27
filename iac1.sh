#!/bin/bash

echo "Criar as pastas"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alteração dos Grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissões dos Usuários nas Pastas"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criar os usuários com senha"

useradd carlos -m -p $(openssl passwd Senha123) -G GRP_ADM -s /bin/bash
useradd maria -m -p $(openssl passwd Senha123) -G GRP_ADM -s /bin/bash
useradd joao -m -p $(openssl passwd Senha123) -G GRP_ADM  -s /bin/bash

useradd debora -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash
useradd sebastiana -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash
useradd roberto -m -p $(openssl passwd Senha123) -G GRP_VEN -s /bin/bash

useradd josefina -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash
useradd amanda -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash
useradd rogerio -m -p $(openssl passwd Senha123) -G GRP_SEC -s /bin/bash

echo "Finalizado"
