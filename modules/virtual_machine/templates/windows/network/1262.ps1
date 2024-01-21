write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.170.1 -p
route add 10.113.170.0 mask 255.255.255.240 10.113.170.1 -p
route add 10.0.0.0 mask 255.0.0.0 10.113.170.14 -p
route add 10.119.4.0 mask 255.255.254.0 10.113.170.1 -p
route add 10.119.163.0 mask 255.255.254.0 10.113.170.1 -p
route add 10.119.144.0 mask 255.255.254.0 10.113.170.1 -p
route add 10.113.171.0 mask 255.255.255.240 10.113.171.1 -p
route add 10.119.240.0 mask 255.255.240.0 10.113.171.1 -p
route add 192.168.200.0 mask 255.255.252.0 10.113.171.1 -p
route add 192.168.141.0 mask 255.255.255.0 10.113.171.1 -p
route add 172.21.224.0 mask 255.255.255.0 10.113.171.1 -p