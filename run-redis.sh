# Port configuration
server_port=6379
insights_port=8001

# Mounted vol.
volume=

# Define color codes
BOLD='\033[1m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

docker run -d -v "$(pwd)/local-data/:/data" --name "$1" -p $server_port:$server_port -p $insights_port:$insights_port redis/redis-stack:latest &&

echo "Redis server is running on port:${BOLD}${GREEN} ${server_port} ${NC}" && 
echo "Redis insights UI is running at:${BOLD}${GREEN} localhost:${insights_port} ${NC}"
echo "Container volume mounted from:${BOLD}${RED} $(pwd)/local-data ${NC} to /data"
echo "Container name is:${BOLD}${GREEN} $1 ${NC}"
echo "To acces the Redis CLI run: ${BOLD} ./redis-cli.sh $1"