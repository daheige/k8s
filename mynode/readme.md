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
