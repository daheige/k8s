#!/bin/bash
root_dir=$(cd "$(dirname "$0")"; cd ..; pwd)

# kubectl apply -f $root_dir/recommended.yaml

cd $root_dir/myweb

kubectl create -f mysql-rc.yaml
# replicationcontroller/mysql created

kubectl create -f mysql-svc.yaml
# service/mysql created

kubectl create -f myweb-rc.yaml
# replicationcontroller/myweb created

kubectl create -f myweb-svc.yaml
# service/myweb created
