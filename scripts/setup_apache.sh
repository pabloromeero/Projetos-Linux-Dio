#!/bin/bash

# Atualizar o servidor
echo "Atualizando o servidor..."
apt update -y
apt upgrade -y

# Instalar o Apache2
echo "Instalando o Apache2..."
apt install apache2 -y

# Instalar o unzip
echo "Instalando o unzip..."
apt install unzip -y

# Baixar a aplicação no /tmp
echo "Baixando e descompactando a aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactar o arquivo
unzip main.zip

# Copiar os arquivos para o diretório padrão do Apache
echo "Copiando arquivos da aplicação para o Apache..."
cp -R linux-site-dio-main/* /var/www/html/

# Ajustar permissões (opcional, mas recomendado)
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/

echo "Aplicação implantada com sucesso!"
