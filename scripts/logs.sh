# Script para visualizar logs da aplicação
set -e

echo "Visualizando logs da aplicação..."

# Mostrar logs do container
docker-compose logs -f todo-app