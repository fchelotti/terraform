write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.141.97 -p
route add 10.113.141.96 mask 255.255.255.240 10.113.141.97 -p
route add 10.0.0.0 mask 255.0.0.0 10.160.235.61 -p
route add 10.119.14.0 mask 255.255.254.0 10.160.235.20 -p
route add 10.119.167.0 mask 255.255.255.0 10.160.235.20 -p
route add 10.114.141.96 mask 255.255.255.240 10.114.141.97 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.141.97 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.141.97 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.141.97 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.141.97 -p
route add 10.115.141.96 mask 255.255.255.240 10.115.141.97 -p
route add 10.112.241.0 mask 255.255.255.0 10.115.141.97 -p
route add 10.112.251.0 mask 255.255.255.0 10.115.141.97 -p