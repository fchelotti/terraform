write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.206.64.1 -p
route add 10.106.255.192 mask 255.255.255.192 10.206.64.1 -p
route add 10.106.250.0 mask 255.255.255.0 192.168.220.1 -p
route add 10.106.255.128 mask 255.255.255.192 192.168.220.1 -p
route add 10.119.243.0 mask 255.255.255.0 192.168.220.1 -p
route add 172.16.100.0 mask 255.255.255.0 192.168.220.1 -p
route add 192.168.200.0 mask 255.255.252.0 192.168.220.1 -p
route add 10.105.251.0 mask 255.255.255.0 192.168.243.252 -p
route add 10.104.241.0 mask 255.255.255.0 192.168.243.252 -p
