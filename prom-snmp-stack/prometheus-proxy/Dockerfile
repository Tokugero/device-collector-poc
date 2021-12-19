FROM debian

COPY ./files/snmp_exporter /opt/snmp_exporter/snmp_exporter

CMD ["/opt/snmp_exporter/snmp_exporter", "--config.file=/opt/config/snmp_exporter/snmp.yml"]