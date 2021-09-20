# k8s 访问

    启动k8s
    kubectl apply -f $root_dir/recommended.yaml
    
    访问控制面板
    http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/node?namespace=default

# k8s alias

    centos:
    vim ~/.bashrc
    alias k=kubectl
    alias kdesc="kubectl describe"
    alias kcd="kubectl config set-context $(kubectl config current-context) --namespace"
    export KUBE_EDITOR="/usr/bin/vim"

    source ~/.bashrc

    mac os: vim ~/.bash_profile
            source ~/.bash_profile

# istio 1.8+使用

    https://istio.io/latest/zh/docs/tasks/traffic-management/ingress/ingress-control/
    https://istio.io/latest/zh/docs/setup/getting-started/

    https://preliminary.istio.io/latest/zh/docs/
    https://preliminary.istio.io/latest/zh/docs/setup/getting-started/

# k8s-in-action
    
    https://github.com/daheige/k8s-in-action

# Kubernetes 中文指南
    
    https://github.com/daheige/kubernetes-handbook
