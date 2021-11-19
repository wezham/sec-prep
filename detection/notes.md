# Network traffic on linux machine

## What to look for:

1. TCP connections 
1. UDP connections 
1. Other protocols 


## How could you do this:

1. netstat 

Netstat works by interacting with the `/proc/net/*` files. I suspect that the 
os is not reading the files.


## So you see something running what do you look for: 

1. Can you baseline the volume of traffic? Okay how? 
1. Is it on the `/etc/services` list of known ports

### `/etc/services`:

```
The Well Known Ports are those from 0 through 1023.
The Registered Ports are those from 1024 through 49151.
The Dynamic and Private Ports are those from 49152 through 65535.
```

### Its also possible to view the sockets that a process currently has open by viewing:

```
ls -lah /proc/{proc_id}/fd/
```


### Its also possible to look at the following file: 

```
cat /proc/31127/net/sockstat
```

### lsof - view open fd
