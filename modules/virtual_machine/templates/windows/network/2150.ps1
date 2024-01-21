write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.113.76.1 -p
route add 10.113.76.0 mask 255.255.255.0 10.113.76.1 -p
route add 10.104.8.192 mask 255.255.255.192 10.113.76.1 -p