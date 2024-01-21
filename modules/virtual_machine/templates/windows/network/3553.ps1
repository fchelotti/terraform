write-host "Add Routes"
Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
route add 0.0.0.0 mask 0.0.0.0 10.119.1.129 -p
route add 10.119.1.128 mask 255.255.255.248 10.119.1.129 -p
route add 10.161.144.0 mask 255.255.255.0 10.119.1.129 -p
route add 10.161.150.0 mask 255.255.255.0 10.119.1.129 -p
route add 10.161.157.0 mask 255.255.255.224 10.119.1.129 -p
route add 10.119.241.128 mask 255.255.255.248 10.119.241.129 -p