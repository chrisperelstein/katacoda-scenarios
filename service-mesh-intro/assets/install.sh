#!/bin/bash
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.13.3 TARGET_ARCH=x86_64 sh -
cd istio-1.13.3
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled
echo "done" >> /root/katacoda-finished
echo "done" >> /root/katacoda-background-finished
