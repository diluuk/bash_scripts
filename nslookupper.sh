#!/bin/bash
#
# usage: for ip in $(seq 1 255); do nslookup <first three octets of targeted /24 range>.$ip <alternative dns server> | grep name; done
#
for ip in $(seq 1 255); do nslookup 10.11.1.$ip 10.11.1.220 | grep name; done
