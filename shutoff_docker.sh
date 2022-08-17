docker system prune -f
docker image prune -f
docker volume prune -f
docker stop $(docker ps -a -q)
docker rmi -f $(docker images -a -q) 
docker stop $(docker ps -a -q)
