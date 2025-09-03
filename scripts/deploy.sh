#!/bin/bash

# Script de deploy usando Docker
set -e

echo "Iniciando deploy da aplicação..."

# Parar containers existentes se estiverem rodando
echo "Parando containers existentes..."
docker-compose down || true

# Remover imagem antiga se existir
echo "Removendo imagem antiga..."
docker rmi devopsnapratica-projeto_todo-app:latest 2>/dev/null || true

# Construir nova imagem
echo "Construindo nova imagem Docker..."
docker-compose build --no-cache

# Subir a aplicação
echo "Subindo aplicação..."
docker-compose up -d

# Verificar se o container está rodando
echo "Verificando status do container..."
sleep 5
if docker ps | grep -q "todo-app-container"; then
    echo "Deploy realizado com sucesso!"
    echo "Aplicação disponível em: http://localhost:3000"
    echo "Status dos containers:"
    docker-compose ps
else
    echo "Erro no deploy - container não está rodando"
    exit 1
fi