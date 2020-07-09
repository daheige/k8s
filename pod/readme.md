# 标签查找pod
    
    k get pod -l env=debug

    k get po -l 'env in (debug)'

# 获取指定的pod
    
    k get po kubia-manual

# 指定端口到pod container port 进行调试

     k port-forward kubia-manual 8888:8080