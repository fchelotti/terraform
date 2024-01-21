write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.168.7.241 -p
route add 10.168.7.224 mask 255.255.255.224 10.168.7.241 -p
route add 10.0.0.0 mask 255.0.0.0 10.168.7.254 -p
route add 10.119.16.0 mask 255.255.254.0 10.168.7.241 -p
route add 10.119.136.0 mask 255.255.248.0 10.168.7.241 -p
route add 10.119.0.136 mask 255.255.255.248 10.168.7.241 -p
route add 10.114.8.240 mask 255.255.255.224 10.114.8.241 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.8.241 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.8.241 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.8.241 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.8.241 -p
route add 10.114.9.240 mask 255.255.255.224 10.114.9.241 -p
route add 10.112.241.0 mask 255.255.255.0 10.114.9.241 -p
route add 10.112.251.0 mask 255.255.255.0 10.114.9.241 -p
