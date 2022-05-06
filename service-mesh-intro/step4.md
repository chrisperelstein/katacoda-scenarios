# Check out some other features

## Open our ingress to outside world again
`kubectl port-forward -n istio-system --address 0.0.0.0 service/kiali 20001:20001`{{execute}}

## View application
[click here]({{TRAFFIC_HOST1_20001}})
