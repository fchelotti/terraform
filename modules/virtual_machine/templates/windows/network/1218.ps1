write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.40.1 -p
route add 10.119.40.0 mask 255.255.255.248 10.119.40.1 -p
route add 10.0.0.0 mask 255.0.0.0 10.119.40.1 -p