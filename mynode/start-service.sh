alias k=kubectl
# start rc pod
k create -f nodejs-rc.yaml

# start svc
k create -f nodejs-svc.yaml
