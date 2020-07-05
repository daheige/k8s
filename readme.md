# k8s 访问

    启动k8s
    kubectl apply -f $root_dir/recommended.yaml
    
    访问控制面板
    http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/node?namespace=default
