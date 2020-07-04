# mac k8s 安装

    1 安装好docker mac桌面版本
    https://developer.aliyun.com/article/672675

    2 配置好docker.json
    {
    "debug": true,
    "experimental": true,
    "registry-mirrors": [
        "https://8q2dp9p9.mirror.aliyuncs.com",
        "https://uyah70su.mirror.aliyuncs.com",
        "https://docker.mirrors.ustc.edu.cn",
        "https://hub-mirror.c.163.com",
        "https://dockerhub.azk8s.cn",
        "https://reg-mirror.qiniu.com"
    ]
    }

    3 安装k8s
    安装参考：
        https://github.com/AliyunContainerService/k8s-for-docker-desktop

    查看k8s版本
    我的是k8s 1.16.5
    docker 2.3.0.3
    k8s 1.16.5
    compose 1.25.5
    engine 19.03.8

    % git clone https://github.com/AliyunContainerService/k8s-for-docker-desktop.git
    正克隆到 'k8s-for-docker-desktop'...
    remote: Enumerating objects: 349, done.
    ^Z收对象中:  38% (136/349), 372.01 KiB | 2.00 KiB/s
    zsh: suspended  git clone https://github.com/AliyunContainerService/k8s-for-docker-desktop.gi
    % git clone https://github.com/AliyunContainerService/k8s-for-docker-desktop.git
    fatal: 目标路径 'k8s-for-docker-desktop' 已经存在，并且不是一个空目录。
    % rm -rf k8s-for-docker-desktop
    % git clone https://github.com/AliyunContainerService/k8s-for-docker-desktop.git
    正克隆到 'k8s-for-docker-desktop'...
    remote: Enumerating objects: 349, done.
    remote: Total 349 (delta 0), reused 0 (delta 0), pack-reused 349
    接收对象中: 100% (349/349), 2.55 MiB | 9.00 KiB/s, 完成.
    处理 delta 中: 100% (206/206), 完成.
    % cd k8s-for-docker-desktop
    heige@daheige k8s-for-docker-desktop % git checkout v1.16.5
    分支 'v1.16.5' 设置为使用变基来跟踪来自 'origin' 的远程分支 'v1.16.5'。
    切换到一个新分支 'v1.16.5'
    heige@daheige k8s-for-docker-desktop % ./load_images.sh
    images.properties found.
    3.1: Pulling from google_containers/pause
    cf9202429979: Pull complete
    Digest: sha256:759c3f0f6493093a9043cc813092290af69029699ade0e3dbe024e968fcb7cca
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1
    registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/pause@sha256:759c3f0f6493093a9043cc813092290af69029699ade0e3dbe024e968fcb7cca
    v1.16.5: Pulling from google_containers/kube-controller-manager
    39fafc05754f: Pull complete
    4c0e8d65e19c: Pull complete
    Digest: sha256:79ab7920ae0aea0e76ffef654ab1b01f9f69f5ef4369bab365b8e346bcfe2ba2
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.16.5
    registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager@sha256:79ab7920ae0aea0e76ffef654ab1b01f9f69f5ef4369bab365b8e346bcfe2ba2
    v1.16.5: Pulling from google_containers/kube-scheduler
    39fafc05754f: Already exists
    1db652029d95: Pull complete
    Digest: sha256:c7c3c620503e383c36bd6808c1251fbbf95ea99551fde9cc8ab2f22f2c8761ed
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.16.5
    registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler@sha256:c7c3c620503e383c36bd6808c1251fbbf95ea99551fde9cc8ab2f22f2c8761ed
    v1.16.5: Pulling from google_containers/kube-proxy
    39fafc05754f: Already exists
    db3f71d0eb90: Pull complete
    afc046b6694a: Pull complete
    Digest: sha256:92689ecd3716d024b5be394f3617859fd21edf87658a5b1e152a838868fa6c8a
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.16.5
    registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy@sha256:92689ecd3716d024b5be394f3617859fd21edf87658a5b1e152a838868fa6c8a
    v1.16.5: Pulling from google_containers/kube-apiserver
    39fafc05754f: Already exists
    fdffd0d7a0bb: Pull complete
    Digest: sha256:6317dc1adc837425ed01ff813ce01540e0b162977e6373b205f41d880bb3819a
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.16.5
    registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.16.5
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver@sha256:6317dc1adc837425ed01ff813ce01540e0b162977e6373b205f41d880bb3819a
    3.3.15-0: Pulling from google_containers/etcd
    39fafc05754f: Already exists
    aee6f172d490: Pull complete
    e6aae814a194: Pull complete
    Digest: sha256:37a8acab63de5556d47bfbe76d649ae63f83ea7481584a2be0dbffb77825f692
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.3.15-0
    registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.3.15-0
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:3.3.15-0
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/etcd@sha256:37a8acab63de5556d47bfbe76d649ae63f83ea7481584a2be0dbffb77825f692
    1.6.2: Pulling from google_containers/coredns
    c6568d217a00: Pull complete
    3970bc7cbb16: Pull complete
    Digest: sha256:4dd4d0e5bcc9bd0e8189f6fa4d4965ffa81207d8d99d29391f28cbd1a70a0163
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.2
    registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.2
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.2
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/coredns@sha256:4dd4d0e5bcc9bd0e8189f6fa4d4965ffa81207d8d99d29391f28cbd1a70a0163
    0.26.1: Pulling from google_containers/nginx-ingress-controller
    c8775c51b291: Pull complete
    4fc647720de5: Pull complete
    4bee7d3b55eb: Pull complete
    85ee1a272ac8: Pull complete
    6a37290ece43: Pull complete
    cd42756652d1: Pull complete
    ba0a46163f53: Pull complete
    b15c3bdebd38: Pull complete
    69a3d60cbd64: Pull complete
    7b1f35e5645a: Pull complete
    8c7b9cd15ac7: Pull complete
    9021fc6169bc: Pull complete
    Digest: sha256:5da1b2e84ecbdb27facbea84bc6ddc9d50145d824963230735b47828891cba7b
    Status: Downloaded newer image for registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller:0.26.1
    registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller:0.26.1
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller:0.26.1
    Untagged: registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller@sha256:5da1b2e84ecbdb27facbea84bc6ddc9d50145d824963230735b47828891cba7b
    heige@daheige k8s-for-docker-desktop % kubectl config use-context docker-desktop
    Switched to context "docker-desktop".
    heige@daheige k8s-for-docker-desktop % kubectl cluster-info
    Kubernetes master is running at https://kubernetes.docker.internal:6443
    KubeDNS is running at https://kubernetes.docker.internal:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

    To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
    heige@daheige k8s-for-docker-desktop % kubectl get nodes
    NAME             STATUS   ROLES    AGE   VERSION
    docker-desktop   Ready    master   58s   v1.16.6-beta.0
    heige@daheige k8s-for-docker-desktop % kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc5/aio/deploy/recommended.yaml
    namespace/kubernetes-dashboard created
    serviceaccount/kubernetes-dashboard created
    service/kubernetes-dashboard created
    secret/kubernetes-dashboard-certs created
    secret/kubernetes-dashboard-csrf created
    secret/kubernetes-dashboard-key-holder created
    configmap/kubernetes-dashboard-settings created
    role.rbac.authorization.k8s.io/kubernetes-dashboard created
    clusterrole.rbac.authorization.k8s.io/kubernetes-dashboard created
    rolebinding.rbac.authorization.k8s.io/kubernetes-dashboard created
    clusterrolebinding.rbac.authorization.k8s.io/kubernetes-dashboard created
    deployment.apps/kubernetes-dashboard created
    service/dashboard-metrics-scraper created
    deployment.apps/dashboard-metrics-scraper created
    heige@daheige k8s-for-docker-desktop % kubectl get pod -n kubernetes-dashboard
    NAME                                         READY   STATUS              RESTARTS   AGE
    dashboard-metrics-scraper-7b8b58dc8b-s5szr   0/1     ContainerCreating   0          12s
    kubernetes-dashboard-866f987876-brxpk        1/1     Running             0          12s

    设置kubectl proxy代理访问
    heige@daheige k8s-for-docker-desktop % kubectl proxy
    Starting to serve on 127.0.0.1:8001


    查看token
    % TOKEN=$(kubectl -n kube-system describe secret default| awk '$1=="token:"{print $2}')
    % echo $TOKEN
    % kubectl config set-credentials docker-for-desktop --token="${TOKEN}"
    User "docker-for-desktop" set.
    % echo $TOKEN

    根据token登陆，浏览器中就可以访问k8s
