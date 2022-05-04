Deploy another version of the front end service
`kubectl apply -f roll-frontend-v2.yaml`{{execute}}

Add a canary rule to route 20% of traffic to new version but keep 80% of old traffic.
`kubectl apply -f roll-virtual-service-update.yaml`{{execute}}
