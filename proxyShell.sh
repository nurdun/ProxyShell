#!/bin/bash

# run this shell on proxy host

# tunnel_port is the port build proxy between proxy host and target host
# tunnel_port must to seem with local tunnel_port
# target_user is target host login user name that we will build access proxy
# target_host is target host name that we will build access proxy  

ssh -D $tunnel_port $target_user@$target_host
