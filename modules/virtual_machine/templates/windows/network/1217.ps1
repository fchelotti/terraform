write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 192.168.197.137 -p
route add 192.168.197.136 mask 255.255.255.248 192.168.197.137 -p
route add 10.0.0.0 mask 255.0.0.0 192.168.197.137 -p