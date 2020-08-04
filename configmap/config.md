# literal-config

% k create configmap fortune-config --from-literal=foor=test --from-literal=sleep-time=20
configmap/fortune-config created
% k get configmap
NAME             DATA   AGE
fortune-config   2      23s
% k get configmap fortune-config -o yaml
apiVersion: v1
data:
  foor: test
  sleep-time: "20"
kind: ConfigMap
metadata:
  creationTimestamp: "2020-08-04T15:13:40Z"
  name: fortune-config
  namespace: default
  resourceVersion: "483478"
  selfLink: /api/v1/namespaces/default/configmaps/fortune-config
  uid: d7728178-fff9-4039-bf96-85d0cb513c02
  
# 通过yaml文件的方式创建configmap

  % k create -f foo-config.yaml
  configmap/foo-config created

  查看创建的configmap
  % k get configmap
  NAME             DATA   AGE
  foo-config       3      11s
  fortune-config   2      5m14s
  % k get configmap foo-config -o yaml
  apiVersion: v1
  data:
    foor: test
    name: daheige
    sleep-time: “20”
  kind: ConfigMap
  metadata:
    creationTimestamp: "2020-08-04T15:18:43Z"
    name: foo-config
    namespace: default
    resourceVersion: "484000"
    selfLink: /api/v1/namespaces/default/configmaps/foo-config
    uid: 1acb42fb-a014-4a3c-bdd2-814bf6e32de5
  
# 通过--from-file=key=file.conf方式创建configmap

  % k create configmap my-config --from-file=customkey=config-file.conf
  configmap/my-config created

  查看创建好的configmap
  % k get configmap my-config -o yaml
  apiVersion: v1
  data:
    customkey: |
      foo=daheige
      email=zhuwei313@hotmail.com
      job=golang
  kind: ConfigMap
  metadata:
    creationTimestamp: "2020-08-04T15:22:56Z"
    name: my-config
    namespace: default
    resourceVersion: "484435"
    selfLink: /api/v1/namespaces/default/configmaps/my-config
    uid: 947a0bbe-e362-4169-a437-080a4c015f1f

  上面的几种方式可以混合使用，这样的话是合并不同的configmap中的key/val
  