write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.160.120.129 -p
route add 10.160.120.128 mask 255.255.255.128 10.160.120.129 -p
route add 192.168.224.128 mask 255.255.255.128 192.168.224.129 -p
route add 10.119.240.0 mask 255.255.240.0 192.168.224.129 -p
route add 192.168.200.0 mask 255.255.252.0 192.168.224.129 -p
route add 192.168.141.0 mask 255.255.255.0 192.168.224.129 -p
route add 172.21.224.0 mask 255.255.255.0 192.168.224.129 -p
route add 192.168.226.128 255.255.255.128 192.168.226.135 -p
route add 10.112.241.0 mask 255.255.255.0 192.168.226.135 -p
route add 10.112.251.0 mask 255.255.255.0 192.168.226.135 -p