write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.170.17 -p
route add 10.113.170.16 mask 255.255.255.248 10.113.170.17 -p
route add 10.0.0.0 mask 255.0.0.0 10.113.170.22 -p
route add 10.119.4.0 mask 255.255.254.0 10.113.170.17 -p
route add 10.119.163.0 mask 255.255.254.0 10.113.170.17 -p
route add 10.119.144.0 mask 255.255.254.0 10.113.170.17 -p
route add 10.113.171.16 mask 255.255.255.248 10.113.171.22 -p
route add 10.119.240.0 mask 255.255.240.0 10.113.171.22 -p
route add 192.168.200.0 mask 255.255.252.0 10.113.171.22 -p
route add 192.168.141.0 mask 255.255.255.0 10.113.171.22 -p
route add 172.21.224.0 mask 255.255.255.0 10.113.171.22 -p
route add 10.113.172.16 mask 255.255.255.248 10.113.172.22 -p
route add 10.112.241.0 mask 255.255.255.0 10.113.172.22 -p
route add 10.112.251.0 mask 255.255.255.0 10.113.172.22 -p