write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.65 -p
route add 10.119.1.64 mask 255.255.255.248 10.119.1.65 -p
route add 10.115.6.0 mask 255.255.255.0 10.119.1.65 -p
route add 10.115.9.0 mask 255.255.255.0 10.119.1.65 -p
route add 10.115.30.0 mask 255.255.255.0 10.119.1.65 -p
route add 10.119.241.64 mask 255.255.255.248 10.119.241.65 -p