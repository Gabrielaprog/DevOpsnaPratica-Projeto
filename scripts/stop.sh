# Script para parar a aplicação
set -e

echo "Parando aplicação..."

# Parar e remover containers
docker-compose down

# Remover imagem se solicitado
if [ "$1" = "--remove-image" ]; then
    echo "Removendo imagem Docker..."
    docker rmi devopsnapratica-projeto_todo-app:latest 2>/dev/null || true
fi

echo "Aplicação parada com sucesso!"