# elasticsearch-k8s

## prerequirement
1. [Google cloud SDK](https://cloud.google.com/sdk/docs/quickstarts?hl=ja)
1. docker with kubernetes
  1. [kubectl](https://kubernetes.io/docs/user-guide/kubectl/)
```
$ gcloud components install kubectl
```

## use on docker for mac with kubernetes

### deploy
```
$ kubectl config use-context docker-for-desktop
$ cd example
$ kubectl apply -f 00namespace.yaml -f configmap.yaml -f deployment-elasticsearch-full.yaml -f service-full.yaml
```

### access elasticsearch
```
$ curl -L -XGET 'http://localhost/search' -u 'elastic:changeme'
```

### get information
```
$ kubectl get **(e.g. deploy, po, rs, svc...) --namespace elasticsearch
$ kubectl describe ** --namespace elasticsearch
```
See [kubectl Reference Documentation](https://kubernetes.io/docs/user-guide/kubectl/) for more information

