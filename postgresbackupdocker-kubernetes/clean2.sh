#! /bin/bash
kubectl delete service postgres1
kubectl delete deployment postgres1
kubectl delete configmap postgres-config1
kubectl delete persistentvolumeclaim postgres-pv-claim1
kubectl delete persistentvolume postgres-pv-volume1
