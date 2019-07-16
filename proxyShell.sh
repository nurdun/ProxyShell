#!/bin/bash

# tunnel_port is specific port number of proxy
# target_user is target host login user name
# target_host is the target host that to build proxy
# set tunnel_port variable or use specific port number to instead $tunnel_port in below command
# set target_user and target_host variables or use specific user name and host name to instead them in below command
 
ssh -L $tunnel_port:127.0.0.1:$tunnel_port $target_user@$target_host


