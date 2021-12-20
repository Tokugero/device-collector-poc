# prom-snmp-stack

## Purpose

This folder is to house the stack demonstration of Prometheus and *ONE* prometheus module [snmp_exporter](https://github.com/prometheus/snmp_exporter). Prometheus is a gigantic community with a plethora of available plugins that will likely exist for your problem.

## Links to view
[Grafana](http://localhost:3000/) 
> username = admin  
> password = admin  
* You'll have to refresh the page after login due to cookie caching forcing the redirect link back to the login page.

[Prometheus](http://localhost:9090)
* Prometheus has a rich dashboard for metric viewing and testing. Where Grafana is a better beast for aggregated data, Prometheus dashboards are awesome for single metric analysis before curating your Grafana dashboards.

[Prometheus-Proxy](http://localhost:9116/snmp)
* You can see what the proxy sees here, this is the quickest way to validate if your SNMP metrics are coming through in a way that Prometheus DB might be able to pull them.

## Start the SNMP Stack

```
cd prom-snmp-stack
docker-compose up -d
```

## Delete the SNMP Stack

```
cd prom-snmp-stack
docker-compose down -v
```

## Files worth editing

### Containers
* [docker-compose.yml](./docker-compose.yml)
  - This file is responsible for all the structure and configuration of this environment.

### Grafana
* [Provisioning](./grafana/provisioning)
  - While any dashbaord can be edited and saved in the container while it's up, it will not be persistent or distributable to this project until it is saved in this folder.

### Prometheus DB
* [prometheus.yml](./prom-snmp-stack/prometheusdb/config/prometheus.yml)
  - This is the scraper responsible for collecting logs from the [snmp_exporter](https://github.com/prometheus/snmp_exporter) "proxy" service. It's also responsible for the inventory list of which hosts to pull snmp metrics from, through the proxy.

### Prometheus Proxy
* [snmp.yml](./prom-snmp-stack/prometheus-proxy/config/snmp.yml)
  - This is the configuration the scraper uses to decipher snmp OIDs to metrics that prometheus can handle.

### SNMP
* [snmpd.conf](./prom-snmp-stack/snmp/node1/config/snmpd.conf)
  - The curation location for scripts and OID/MIB bindings.
* [scripts/](.prom-snmp-stack/snmp/scripts/)
  - The location of scripts that will be mounted into the running containers. Try adding your own here and see if you can get the new metric to show up in the proxy!