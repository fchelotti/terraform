write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.81 -p
route add 10.119.1.80 mask 255.255.255.248 10.119.1.81 -p
route add 10.115.9.0 mask 255.255.255.0 10.119.1.81 -p
route add 10.115.19.0 mask 255.255.255.0 10.119.1.81 -p
route add 10.115.23.0 mask 255.255.255.0 10.119.1.81 -p
route add 10.119.241.80 mask 255.255.255.248 10.119.241.81 -p