```
$ git clone https://github.com/clickfreak/promandgraf
$ cd promandgraf
$ cd traefik

# change value of certificatesresolvers.myresolver.acme.email in docker-compose
$ vi docker-compose.yml
$ docker-compose up -d
$ cd ..

# change domain names in traefik.http.routers.<target_name>.rule
$ vi docker-compose.yml
$ docker-compose up -d
```

Remove `:Z` from volumes definitions if you use linux system without selinux.

add targets
-----------

You can add file `prometheus/targets.d/node_exporters.yml`:
```
- targets:
   - <your_hostname>
  labels:
    exporter_port: 9100
    exporter_name: node_exporter
```
