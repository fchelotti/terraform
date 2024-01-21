write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.73 -p
route add 10.119.1.72 mask 255.255.255.248 10.119.1.73 -p
route add 10.115.9.0 mask 255.255.255.0 10.119.1.73 -p
route add 10.115.10.0 mask 255.255.255.0 10.119.1.73 -p
route add 10.115.14.0 mask 255.255.255.0 10.119.1.73 -p
route add 10.119.241.72 mask 255.255.255.248 10.119.241.73 -p