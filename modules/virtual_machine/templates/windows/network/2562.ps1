write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.114.24.129 -p
route add 10.114.24.128 mask 255.255.255.128 10.114.24.129 -p
route add 10.0.0.0 mask 255.0.0.0 10.114.24.254 -p
route add 10.119.2.0 mask 255.255.254.0 10.114.24.129 -p
route add 10.119.161.0 mask 255.255.255.0 10.114.24.129 -p
route add 10.119.173.64 mask 255.255.255.224 10.114.24.129 -p
route add 10.114.29.128 mask 255.255.255.128 10.114.29.129 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.29.129 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.29.129 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.29.129 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.29.129 -p
route add 10.114.34.128 mask 255.255.255.128 10.114.34.129 -p
route add 10.112.241.0 mask 255.255.255.0 10.114.34.129 -p
route add 10.112.251.0 mask 255.255.255.0 10.114.34.129 -p