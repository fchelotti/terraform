# notaMental

VMware API

Solicitar Token:

curl --insecure -XPOST -H "Content-Type: application/json" -H "Accept: application/json" -H "vmware-use-header-authn: test" -H "vmware-api-session-id: null" -u
"admin" https:[url do vcenter]/api/session

Chamada com Token:

curl --insecure -XGET -H "Accept: application/json" -H "vmware-api-session-id: TOKEN" https://[url do vcenter]/rest/vcenter/host

URL com as rotas:

https://[url do vcenter]/ui/app/devcenter/api-explorer