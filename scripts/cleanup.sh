#!/bin/bash

# --- Remover diretórios ---
echo "Removendo diretórios..."
rm -rf /publico /adm /ven /sec

# --- Remover usuários ---
echo "Removendo usuários..."
for user in carlos maria joao debora sebastiana roberto josefina amanda rogerio; do
    userdel -r $user 2>/dev/null
done

# --- Remover grupos ---
echo "Removendo grupos..."
for group in GRP_ADM GRP_VEN GRP_SEC; do
    groupdel $group 2>/dev/null
done

echo "Limpeza concluída."
