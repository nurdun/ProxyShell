Guid

Step 1

run `localshell.sh` in local login to proxy host

Step 2

run `proxyShell.sh` on proxy host login to target host and build proxy access with proxy host

step 3

after step 1 and step 2 finished we can use `127.0.0.1:$tunnel_port` to access target host


localShell.sh

`tunnel_port` is specific port number of proxy<br/>
`proxy_user` is proxy host login user name<br/>
`proxy_host` is the proxy host that to build proxy<br/>
set `tunnel_port` variable or use specific port number to instead $tunnel_port in below command<br/>
set `proxy_user` and proxy_host variables or use specific user name and host name to instead them in below command<br/>

`ssh -L $tunnel_port:127.0.0.1:$tunnel_port $proxy_user@$proxy_host`

proxyShell.sh

run this shell on proxy host

`tunnel_port` is the port build proxy between proxy host and target host<br/>
`tunnel_port` must to seem with local tunnel_port<br/>
`target_user` is target host login user name that we will build access proxy<br/>
`target_host` is target host name that we will build access proxy<br/>  

`ssh -D $tunnel_port $target_user@$target_host`

example

if you run java application on IDEA and it is need to access a origin host<br/>
you just need to add<br/> 

`-DsocksProxyHost=localhost -DsocksProxyPort=$tunnel_port`

these aguments to run configurations vm options  
