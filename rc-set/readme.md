# ReplicaSet

    使用 ReplicaSet而不是ReplicationController
    最初， Replication ontroller 是用于复制和在异常重新调度节点的唯一
    Kubemetes组件，后来又引入了一个名为 ReplicaSet 的类似资源它是新代的
    ReplicationController，并且将其完全替换掉（ ReplicationController 最终将被弃用）
    你本可以通过创建一个 ReplicaSet 而不是 ReplicationController 来开始本章，
    但是从k8s最初提供的组件开始是个好主意。另外，你仍然可以看
    到使用中的 ReplicationController 所以你最好知道它们 也就是说从现在起，你应
    该始终创建 ReplicaSet 而不是 ReplicationController 。它们几乎完全相同，所以你不
    会碰到任何麻烦。

# rc 和 rc set区别

    rc set的行为与 rc完全相同，但 pod 选择器的表达能力
    更强。虽然 rc 的标签选择器只允许包含某个标签的匹配 pod ，但
    rc set的选择器还允许匹配缺少某个标签的 pod ，或包含特定标签名的 pod ，不
    管其值如何。rc set 可以匹配多个pod形成一个大组。

    同样，无论 rc 的值如何， rc 都无法仅基于标签名的存在来匹配 pod ，
    而 rcset 则可以 例如， rc set 可匹配所有包含
    名为 env 标签的 pod 无论 rc set 的实际值是什么（可以理解为 env＝*)

# rcset version no match

    K8S1.8.3报错 no matches for kind ReplicaSet in version extensions_v1beta1
    k create -f kubia-rc-set.yaml

    error: unable to recognize "kubia-rc-set.yaml": no matches for kind "ReplicaSet" in version "apps/v2"

    解决方法
    vim *.yaml 将 apiVersion 版本修改一下

    apiVersion: apps/v1

    具体原因
    查看当前Kubernetes所有Api版本： kubectl api-versions
    apps/v1beta2
    在kubernetes1.8版本中，新增加了apps/v1beta2的概念，apps/v1beta1同理
    DaemonSet，Deployment，ReplicaSet 和 StatefulSet的当时版本迁入apps/v1beta2，兼容原有的extensions/v1beta1

    apps/v1
    在kubernetes1.9版本中，引入apps/v1，deployment等资源从extensions/v1beta1, apps/v1beta1 和 apps/v1beta2迁入apps/v1，原来的v1beta1等被废弃。

    apps/v1代表：包含一些通用的应用层的api组合，如：Deployments, RollingUpdates, and ReplicaSets

# rc set create

    k create -f kubia-rc-set.yaml

# rs 容量改变

    k scale rs kubia-web --replicas=6

# rs selector 表达式

    selector: 
        matchExpressions 
            - key: app 
              operator: In 
              values:
                - kubia
    标签表达式选择
    其中In: Label的值必须要和其中一个指定的values匹配
    NotIn: label的值与任何指定的values不匹配
    Exists: pod必须指定一个标签（值不重要）
    DoesNotExists: pod不包含指定的标签

# create rs and svc

    sh kubia-web-start.sh
