# DNS 

In order to translate from the mnemomic name of a URL into an IP address we use
DNS. DNS provides a means to get the address for an IP address

Its hierarchical. We don't want one DNS for the world so we organise it into
a 3 tier hierarchy. 

1. Root level DNS servers
1. TLD DNS servers
1. authoritative servers

I am unsure the purpose of Root level DNS servers, however it seems that the 
function of TLD is to handle requests for `.com`, `.co` etc and then any 
organisation with a host needs to expose DNS records on authoritative servers.

Okay so, if I requested a URL the flow might look as follows:


Lets assume some `wes.com` domain:

1. First my machine queries the root level DNS for some `wes.com` domain. The root DNS
    returns a list of TLD's that know about the `.com` domain
1. Then my machine queries the the TLD. The TLD's returns the authoritative server
   which knows about the `wes.com` domain
1. Then my machine queries the auth server for the ip address

We have `recursive` and `iterative` DNS look ups. One where the client queries
the subsequent servers, and the other where the server resolves the request.

## DNS Records

Looks as follows:

```
(Name, Value, Type, TTL)
```

| Type | Rest, Explination | 
| --- | --- |
| A | (hostname, ip_address, `A`, TTL), hostname to ip mapping |
| NS | (domain, ip_address, `NS`, TTL), domain to auth server |
| CNAME | (domain, canonical_name, `CNAME`, TTL), alias |
| MX | (domain, canoncial_name, `MX`, TTL), alias for mail server |


## Why UDP

DNS uses UDP because of the low-cost and little overhead associated with it.
