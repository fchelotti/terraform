write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.63.1 -p
route add 10.113.63.0 mask 255.255.255.0 10.113.63.1 -p