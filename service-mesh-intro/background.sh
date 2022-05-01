#!/bin/bash
launch.sh
sleep 1
cd istio-1.13.3
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
kubectl label namespace default istio-injection=enabled
kubectl apply -f samples/addons
kubectl apply -f samples/addons
echo "done" >> /root/katacoda-background-finished
