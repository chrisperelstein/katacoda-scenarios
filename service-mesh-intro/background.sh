#!/bin/bash
launch.sh
sleep 1
docker build --tag backend:0.0.1 /tmp/backend
docker build --tag frontend:0.0.1 /tmp/frontendv1
docker build --tag frontend:0.0.2 /tmp/frontendv2
curl -L -k https://istio.io/downloadIstio | ISTIO_VERSION=1.13.3 TARGET_ARCH=x86_64 sh -
mv /tmp/kiali.yaml istio-1.13.3/samples/addons
cd istio-1.13.3
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled
kubectl apply -f samples/addons
kubectl apply -f samples/addons
echo "done" >> /root/katacoda-background-finished
istioctl dashboard kiali --browser=false
