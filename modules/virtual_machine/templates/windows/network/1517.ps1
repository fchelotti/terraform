write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 192.168.197.193 -p
route add 192.168.197.192 mask 255.255.255.240 192.168.197.193 -p
route add 10.0.0.0 mask 255.0.0.0 192.168.197.193 -p