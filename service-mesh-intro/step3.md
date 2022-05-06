# Canary deployment

A canary deployment allows us to slowy roll out our changes to a subset of users.

## Deploy a new version of our frontend

Deploy the new version

`kubectl apply -f roll-frontend-v2.yaml`{{execute}}

Add a canary rule to route 20% of traffic to new version but keep 80% of old traffic.

`kubectl apply -f roll-virtual-service-update.yaml`{{execute}}

# View application
[click here]({{TRAFFIC_HOST1_8080}})

Note: There are many options for canary deployments. Usernames, ips etc.
