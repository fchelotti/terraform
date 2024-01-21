write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.161.216.193 -p
route add 10.161.216.192 mask 255.255.255.192 10.161.216.193 -p
route add 10.0.0.0 mask 255.0.0.0 10.161.216.254 -p
route add 10.119.26.0 mask 255.255.254.0 10.161.216.193 -p
route add 10.119.169.0 mask 255.255.255.0 10.161.216.193 -p
route add 10.119.173.0 mask 255.255.255.192 10.161.216.193 -p
route add 10.113.44.0 mask 255.255.255.192 10.114.130.193 -p
route add 10.119.240.0 mask 255.255.240.0 10.114.130.193 -p
route add 192.168.200.0 mask 255.255.252.0 10.114.130.193 -p
route add 192.168.141.0 mask 255.255.255.0 10.114.130.193 -p
route add 172.21.224.0 mask 255.255.255.0 10.114.130.193 -p
route add 10.113.47.0 mask 255.255.255.192 10.114.132.193 -p
route add 10.112.241.0 mask 255.255.255.0 10.114.132.193 -p
route add 10.112.251.0 mask 255.255.255.0 10.114.132.193 -p