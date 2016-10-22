#Nordvpn
Script script around Systemd and Openvpn to make downloading and selecting a vpn from nordvpn easier

##Dependencies
- dnsutils (dig)
- curl
- netselect
- awk
- openvpn
- systemd

`apt-get install curl dnsutils openvpn`


Netselect is missing from ubuntu for some reason. get it here:
https://packages.debian.org/sid/netselect-apt

`dpkg -i netselect*.deb`


##Usage

###AutoLogin: (optional)
`nordvpn login`

Saves the login in the /etc/nordvpn/login.conf file and modifies the vpn config to use that instead of asking everytime you start the service.<br>


###Download:
`nordvpn [-r] [-f] [-t] [-u] [-c "countrycodes"] download`

This downloads the configs from nordvpn and autoselects the server with the lowest latancy at the time.
Note this will stop the vpn service

Either -t and/or -u must be passed along unless you setup the defaults in /etc/default/nordvpn

```
-r select random server.

-f select "fastest" (lowest latency) server.

-t use TCP servers.

-u use UDP servers.

-c "countrycodes" only use these countries.
  add as a list like: -c "-c dk us br ca " or add them like: -c dk -c us -c br -c ca  
```


###Select:
`nordvpn [-r] [-f] select`

This selects a new server.

```
-r select random server.

-f select "fastest" (lowest latency) server.
```


###Status:
`nordvpn status`

Returns some stats about the current state of the vpn.


###Start:
`nordvpn start`

Systemd shortcut to start the vpn client.


###Stop:
`nordvpn stop`

Systemd shortcut to stop the vpn client.


###Restart:
`nordvpn restart`

Systemd shortcut to restart the vpn client.


