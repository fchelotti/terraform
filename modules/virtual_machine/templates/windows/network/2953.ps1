write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.97 -p
route add 10.119.1.96 mask 255.255.255.248 10.119.1.97 -p
route add 10.152.0.0 mask 255.254.0.0 10.119.1.97 -p
route add 10.119.241.96 mask 255.255.255.248 10.119.241.97 -p