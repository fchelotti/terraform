write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.173.158 -p
route add 10.113.173.128 mask 255.255.255.224 10.113.173.158 -p