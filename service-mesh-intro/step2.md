# Deploy our services

Deploy the backend service

`kubectl apply -f roll-backend.yaml`{{execute}}

Deploy the frontend service

`kubectl apply -f roll-frontend.yaml`{{execute}}

# It looks something like this
![Scan results](./assets/topo.png)

# Verify all instances are deployed

`kubectl get pods`{{execute}}

# View application
[click here]({{TRAFFIC_HOST1_8080}})
