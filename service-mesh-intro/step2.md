# Deploy our services

Deploy the backend service
`kubectl apply -f roll-backend.yaml`{{execute}}

Deploy the frontend service
`kubectl apply -f roll-frontend.yaml`{{execute}}

# Open our ingress to outside world
`kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 8080:80`

# View application
[click here]({{TRAFFIC_HOST1_8080}})
