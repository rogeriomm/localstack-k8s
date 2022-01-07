
  * Localstack API
     * https://localstack-api.worldl.xpt

# Install
```shell
kubectl create ns localstack
cd k8s/yaml
kubectl apply -n localstack -f localstack.yaml
kubectl apply -n localstack -f ingress.yaml
```


# Awslocal
   * Install awslocal: https://github.com/localstack/awscli-local
   * Edit ~/.zshrc, add
```shell
export LOCALSTACK_HOST=localstack.localstack.svc.cluster.local
```
   * https://docs.localstack.cloud/integrations/aws-cli/: AWS Command Line Interface

# Checks
```commandline
aws --endpoint-url=https://localstack-api.worldl.xpt s3 ls
aws --endpoint-url=http://localstack.localstack.svc.cluster.local:4566 s3 ls
awslocal s3 ls
```

```commandline
aws --endpoint-url=https://localstack-api.worldl.xpt lambda list-aliases --function-name name
```

# References
   * https://towardsdatascience.com/jupyter-notebook-spark-on-kubernetes-880af7e06351: Jupyter Notebook & Spark on Kubernetes
     * https://github.com/itayB 
     * AWS S3
     * Localstack
     * Jupyter
   * https://gist.github.com/ruanbekker/d289729abd9f3aaab9090e1bc140bfae