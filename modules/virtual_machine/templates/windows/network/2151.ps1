write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.104.8.193 -p
route add 10.104.8.192 mask 255.255.255.192 10.104.8.193 -p
route add 10.113.76.0 mask 255.255.255.0 10.104.8.193 -p
route add 10.113.87.0 mask 255.255.255.0 10.113.87.1 -p
route add 10.119.240.0 mask 255.255.240.0 10.113.87.1 -p
route add 192.168.200.0 mask 255.255.252.0 10.113.87.1 -p
route add 192.168.141.0 mask 255.255.255.0 10.113.87.1 -p
route add 172.21.224.0 mask 255.255.255.0 10.113.87.1 -p