write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.114.23.177 -p
route add 10.114.23.176 mask 255.255.255.240 10.114.23.177 -p
route add 10.114.28.176 mask 255.255.255.240 10.114.28.177 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.28.177 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.28.177 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.28.177 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.28.177 -p
route add 10.114.33.176 mask 255.255.255.240 10.114.33.190 -p
route add 10.112.241.0 mask 255.255.255.0 10.114.33.190 -p
route add 10.112.251.0 mask 255.255.255.0 10.114.33.190 -p