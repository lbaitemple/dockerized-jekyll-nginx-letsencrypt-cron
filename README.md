# Dockerized Jekyll And Nginx

First git clone this repo

```
git clone https://github.com/lbaitemple/dockerized-jekyll-nginx-letsencrypt-cron
cd dockerized-jekyll-nginx-letsencrypt-cron
```

Specify your domain names and contact emails for these domains with space as delimiter in the [`config.env`](config.env):

```bash
DOMAINS="test1.evgeniy-khyst.com test2.evgeniy-khyst.com"
CERTBOT_EMAILS="info@evgeniy-khyst.com info@evgeniy-khyst.com"
```

### <a id="3414177b596079dbf39b1b7fa10234c6"></a>Step 2 - Configure Nginx virtual hosts

For each domain configure the Nginx [`server` block](https://nginx.org/en/docs/http/ngx_http_core_module.html#server) by updating `vhosts/${domain}.conf`:

- `vhosts/domainname.conf`

#### <a id="cdbe8e85146b30abdbb3425163a3b7a2"></a>Serving static content

```
location / {
    root /var/www/html/my-domain;
    index index.html index.htm;
}
```

Make sure `html/my-domain` directory (relative to the repository root) exists and countains the desired content and `html` directory is mounted as `/var/www/ht
ml` in `docker-compose.yml`:


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


```
docker-compose up -d --build
```
This will create a _site in html based on the Jekyll

```
cd html
ln -s _site domain_name
cd ..
```
```
docker-compose logs -f
```

