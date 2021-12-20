#!/bin/bash

# This is going to just be a random number between 1 and 100. Here is what we would do to get data out of our custom monitoring devices.
echo $(( ( RANDOM % 100 )  + 1 ))