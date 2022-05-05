# Check out some other features

## Open our ingress to outside world again
`kubectl port-forward -n istio-system --address 0.0.0.0 service/istio-ingressgateway 20001:20001`

## View application
[click here]({{TRAFFIC_HOST1_20001}})
