# 获取rc 详细信息

    k get rc -o wide

# 删除rc

    指定标签方式删除
    k delete rc -l app=kubia

# 创建命名空间

    k create ns custom-web

# 切换命名空间

    alias kcd="kubectl config set-context $(kubectl config current-context) --namespace"
    kcd default # 切换到默认命名空间上

    kcd custom-web
    k create -f kubia-manual.yaml -n custom-web

# 删除命名空间

    k delete -ns custom-web

# 查看指定命名空间上的pod

    k get pods -n custom-web

# 给rc更加标签

    k label rc myweb name=myweb-app

# show-labels

    k get rc --show-labels

# scale 缩容/扩容

    k scale rc kubia --replicas=3

# 在运行的容器中远程执行命令
    % k get svc
    NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
    kubernetes   ClusterIP   10.96.0.1        <none>        443/TCP          8d
    mynode       NodePort    10.107.147.19    <none>        8080:30956/TCP   5d

    可以看到cluster-ip: 10.107.147.19 服务内部端口 8080
    % k exec kubia-th74c -- curl -s http://10.107.147.19:8080
    You've hit kubia-wp5mk
