write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.112.248.81 -p
route add 10.119.1.56 mask 255.255.255.248 10.112.248.81 -p
route add 10.112.235.0 mask 255.255.255.0 10.119.1.57 -p
route add 10.112.244.0 mask 255.255.255.0 10.119.1.57 -p
route add 10.112.254.0 mask 255.255.255.0 10.119.1.57 -p
route add 10.114.20.0 mask 255.255.252.0 10.119.1.57 -p
route add 10.114.80.0 mask 255.255.252.0 10.119.1.57 -p
route add 10.119.241.56 mask 255.255.255.248 10.119.241.57 -p