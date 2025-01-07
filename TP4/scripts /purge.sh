docker stop $(docker ps -q)
docker rm -f=$(docker ps -q)
docker system prune -a --volumes