#!/bin/bash

# tunnel_port is specific port number of proxy
# proxy_user is proxy host login user name
# proxy_host is the proxy host that to build proxy
# set tunnel_port variable or use specific port number to instead $tunnel_port in below command
# set proxy_user and proxy_host variables or use specific user name and host name to instead them in below command
 
ssh -L $tunnel_port:127.0.0.1:$tunnel_port $proxy_user@$proxy_host
