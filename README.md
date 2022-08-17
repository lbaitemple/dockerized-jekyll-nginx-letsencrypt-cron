# Dockerized Jekyll And Nginx

First git clone this repo

```
git clone https://github.com/lbaitemple/dockerized-jekyll-nginx-letsencrypt-cron
cd dockerized-jekyll-nginx-letsencrypt-cron
```

```bash
docker volume create --name=nginx_conf
docker volume create --name=letsencrypt_certs
```


 - A template to run a Jekyll site served on Nginx using Docker build. 
 
Execute 
```
docker-compose  run jekyllcreate jekyll new html
```
The command will initiate a new Jekyll site inside the folder named "html".


