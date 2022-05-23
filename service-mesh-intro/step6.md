# Kaili

Let's look at prometheus.

## Port-forward for prometheus

`kubectl port-forward -n istio-system --address 0.0.0.0 service/prometheus 9090:9090`{{execute}}

## View the dashboard
[click here]({{TRAFFIC_HOST1_9090}})
