write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.105 -p
route add 10.119.1.104 mask 255.255.255.248 10.119.1.105 -p
route add 10.176.0.0 mask 255.255.0.0 10.119.1.105 -p
route add 10.179.0.0 mask 255.255.255.0 10.119.1.105 -p
route add 10.119.241.104 mask 255.255.255.248 10.119.241.105 -p