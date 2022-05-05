# Deploy a new version of our frontend

Deploy the new version
`kubectl apply -f roll-frontend-v2.yaml`{{execute}}

Add a canary rule to route 20% of traffic to new version but keep 80% of old traffic.
`kubectl apply -f roll-virtual-service-update.yaml`{{execute}}

# Open our ingress to outside world again
`kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 8080:80`

# View application
[click here]({{TRAFFIC_HOST1_8080}})
