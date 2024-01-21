write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.115.48.1 -p
route add 10.115.48.0 mask 255.255.240.0 10.115.48.1 -p
route add 10.0.0.0 mask 255.0.0.0 10.115.48.1 -p