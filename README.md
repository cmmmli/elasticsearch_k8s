# elasticsearch-k8s

## prerequirement
1. [Google cloud SDK](https://cloud.google.com/sdk/docs/quickstarts?hl=ja)
1. [kubectl](https://kubernetes.io/docs/user-guide/kubectl/)
1. docker with kubernetes
```
$ gcloud components install kubectl
```

### get information
```
$ kubectl get **(e.g. deploy, po, rs, svc...) --namespace elasticsearch
$ kubectl describe ** --namespace elasticsearch
```
See [kubectl Reference Documentation](https://kubernetes.io/docs/user-guide/kubectl/) for more information

