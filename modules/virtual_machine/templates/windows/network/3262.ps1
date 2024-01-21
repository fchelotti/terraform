write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.112.250.17 -p
route add 10.112.250.16 mask 255.255.255.248 10.112.250.17 -p
route add 10.0.0.0 mask 255.0.0.0 10.112.250.22 -p
route add 10.119.2.0 mask 255.255.254.0 10.112.250.17 -p
route add 10.112.249.16 mask 255.255.255.248 10.112.249.17 -p
route add 10.119.240.0 mask 255.255.240.0 10.112.249.17 -p
route add 192.168.200.0 mask 255.255.252.0 10.112.249.17 -p
route add 192.168.141.0 mask 255.255.255.0 10.112.249.17 -p
route add 172.21.224.0 mask 255.255.255.0 10.112.249.17 -p
route add 10.112.248.16 mask 255.255.255.248 10.112.248.17 -p
route add 10.112.241.0 mask 255.255.255.0 10.112.248.17 -p
route add 10.112.251.0 mask 255.255.255.0 10.112.248.17 -p