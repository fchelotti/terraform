write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.114.66.126 -p
route add 10.114.66.64 mask 255.255.255.192 10.114.66.126 -p