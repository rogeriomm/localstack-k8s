
```text
provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  s3_force_path_style         = false
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = "http://localstack.localstack.svc.cluster.local:4566"
    apigatewayv2   = "http://localstack.localstack.svc.cluster.local:4566"
    cloudformation = "http://localstack.localstack.svc.cluster.local:4566"
    cloudwatch     = "http://localstack.localstack.svc.cluster.local:4566"
    dynamodb       = "http://localstack.localstack.svc.cluster.local:4566"
    ec2            = "http://localstack.localstack.svc.cluster.local:4566"
    es             = "http://localstack.localstack.svc.cluster.local:4566"
    elasticache    = "http://localstack.localstack.svc.cluster.local:4566"
    firehose       = "http://localstack.localstack.svc.cluster.local:4566"
    iam            = "http://localstack.localstack.svc.cluster.local:4566"
    kinesis        = "http://localstack.localstack.svc.cluster.local:4566"
    lambda         = "http://localstack.localstack.svc.cluster.local:4566"
    rds            = "http://localstack.localstack.svc.cluster.local:4566"
    redshift       = "http://localstack.localstack.svc.cluster.local:4566"
    route53        = "http://localstack.localstack.svc.cluster.local:4566"
    s3             = "http://localstack.localstack.svc.cluster.local:4566"
    secretsmanager = "http://localstack.localstack.svc.cluster.local:4566"
    ses            = "http://localstack.localstack.svc.cluster.local:4566"
    sns            = "http://localstack.localstack.svc.cluster.local:4566"
    sqs            = "http://localstack.localstack.svc.cluster.local:4566"
    ssm            = "http://localstack.localstack.svc.cluster.local:4566"
    stepfunctions  = "http://localstack.localstack.svc.cluster.local:4566"
    sts            = "http://localstack.localstack.svc.cluster.local:4566"
  }
}
```

# Sample terraform
```shell
cd terraform
terraform init
```

  * Currently doesn't work because of bucket DNS name resolution issue. Must be configured on MINIO

```text
╰─ terraform apply                                                                                                                                ─╯

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.test-bucket will be created
  + resource "aws_s3_bucket" "test-bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "my-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + versioning {
          + enabled    = (known after apply)
          + mfa_delete = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.test-bucket: Creating...
aws_s3_bucket.test-bucket: Still creating... [10s elapsed]
aws_s3_bucket.test-bucket: Still creating... [20s elapsed]
╷
│ Error: Error creating S3 bucket: RequestError: send request failed
│ caused by: Put "http://my-bucket.localstack.localstack.svc.cluster.local:4566/": dial tcp: lookup my-bucket.localstack.localstack.svc.cluster.local on 127.0.0.1:53: no such host
│
│   with aws_s3_bucket.test-bucket,
│   on s3-sample-1.tf line 1, in resource "aws_s3_bucket" "test-bucket":
│    1: resource "aws_s3_bucket" "test-bucket" {
│``

# References
   * https://docs.localstack.cloud/integrations/terraform/: Use the Terraform Infrastructure as Code framework with LocalStack