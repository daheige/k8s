#!/bin/bash
echo "create k8s toen"

export TOKEN=$(kubectl -n kube-system describe secret default| awk '$1=="token:"{print $2}')

kubectl config set-credentials docker-for-desktop --token="${TOKEN}"

echo $TOKEN

echo "create k8s token success"

exit 0
