write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.184.61.5 -p
route add 10.184.61.0 mask 255.255.255.0 10.184.61.5 -p
route add 10.0.0.0 mask 255.0.0.0 10.184.61.254 -p
route add 10.119.8.0 mask 255.255.254.0 10.184.61.5 -p
route add 10.119.28.0 mask 255.255.252.0 10.184.61.5 -p
route add 10.119.164.0 mask 255.255.255.0 10.184.61.5 -p
route add 10.119.148.0 mask 255.255.252.0 10.184.61.5 -p
route add 10.119.152.0 mask 255.255.252.0 10.184.61.5 -p
route add 10.113.20.0 mask 255.255.255.0 10.113.20.5 -p
route add 10.119.240.0 mask 255.255.240.0 10.113.20.5 -p
route add 192.168.200.0 mask 255.255.252.0 10.113.20.5 -p
route add 192.168.141.0 mask 255.255.255.0 10.113.20.5 -p
route add 172.21.224.0 mask 255.255.255.0 10.113.20.5 -p
route add 10.113.24.0 mask 255.255.255.0 10.113.24.5 -p
route add 10.112.241.0 mask 255.255.255.0 10.113.24.5 -p
route add 10.112.251.0 mask 255.255.255.0 10.113.24.5 -p
