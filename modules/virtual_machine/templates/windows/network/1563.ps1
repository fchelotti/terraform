write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.90.17 -p
route add 10.113.90.16 mask 255.255.255.240 10.113.90.17 -p