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
