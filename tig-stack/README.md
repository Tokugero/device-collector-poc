# tig-stack

## Purpose

This folder is to house the stack demonstration of *T*elegraf-*I*nflux-*G*rafana

## Links to view
[Grafana](http://localhost:3000/) 
> username = admin  
> password = admin  
* You'll have to refresh the page after login due to cookie caching forcing the redirect link back to the login page.

[Influx](http://localhost:8086)
* There won't be much interesting to see here, however it is the endpoint in which you can send your own custom metrics on other hosts to play with.

## Start the Tig Stack

```
cd tig-stack
docker-compose up -d
```

## Delete the Tig Stack

```
cd tig-stack
docker-compose down -v
```

## Files worth editing

### Containers
* [docker-compose.yml](./docker-compose.yml)
  - This file is responsible for all the structure and configuration of this environment.

### Grafana
* [Provisioning](./grafana/provisioning)
  - While any dashbaord can be edited and saved in the container while it's up, it will not be persistent or distributable to this project until it is saved in this folder.

### Influx
* See [Containers](#containers) section for editing environment variables responsible for this database. Note that changes only occur the first time it turns off, so you'll have to ensure you properly [delete the stack](#delete-the-tig-stack) to make changes here.

### Telegraf
Try replicating this on your own hosts/pis and send the logs to your desktop on the bound influx port (8086 in this example project).
* [telegraf.conf](./telegraf/node1/config/telegraf.conf)
  - This link is an example of ONE of the nodes. It contains the configuration for how to collect data, and where to send it.
* [scripts/](./telegraf/scripts/)
  - This link is a folder of scripts that get loaded into each container, you can try making your own script to collect metrics here that will be sent to influx. 