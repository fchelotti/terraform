write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.161.216.65 -p
route add 10.161.216.64 mask 255.255.255.224 10.161.216.65 -p
route add 10.114.130.64 mask 255.255.255.224 10.114.130.65 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.130.65 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.130.65 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.130.65 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.130.65 -p
route add 10.114.132.64 mask 255.255.255.224 10.114.132.94 -p
route add 10.112.241.0 mask 255.255.255.0 10.114.132.94 -p
route add 10.112.251.0 mask 255.255.255.0 10.114.132.94 -p