#!/bin/bash

# OID
echo ".1.3.9950.1.1"
# TYPE
echo "gauge"
# VALUE
echo $(( ( RANDOM % 100 )  + 1 ))