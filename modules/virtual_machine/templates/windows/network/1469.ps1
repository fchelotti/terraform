write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 192.168.197.185 -p
route add 192.168.197.184 mask 255.255.255.248 192.168.197.185 -p
route add 10.112.107.0 mask 255.255.255.0 10.112.107.1 -p
route add 10.119.240.0 mask 255.255.240.0 10.112.107.1 -p
route add 192.168.200.0 mask 255.255.252.0 10.112.107.1 -p
route add 192.168.141.0 mask 255.255.255.0 10.112.107.1 -p
route add 172.21.224.0 mask 255.255.255.0 10.112.107.1 -p