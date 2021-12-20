#!/bin/bash

# We need to output this in a specific format so SNMP can figure out what *kind* of value we have here. In this case, we want a gauge or decimal-capable number.
# OID
echo ".1.3.9950.1.1"
# TYPE
echo "gauge"
# VALUE - This is going to just be a random number between 1 and 100. Here is what we would do to get data out of our custom monitoring devices.
echo $(( ( RANDOM % 100 )  + 1 ))