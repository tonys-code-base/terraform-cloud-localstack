provider "aws" {
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  region                      = var.aws_region
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    acm            = "https://<TUNNEL URL>"
    apigateway     = "https://<TUNNEL URL>"
    cloudformation = "https://<TUNNEL URL>"
    cloudwatch     = "https://<TUNNEL URL>"
    dynamodb       = "https://<TUNNEL URL>"
    ec2            = "https://<TUNNEL URL>"
    es             = "https://<TUNNEL URL>"
    firehose       = "https://<TUNNEL URL>"
    iam            = "https://<TUNNEL URL>"
    kinesis        = "https://<TUNNEL URL>"
    kms            = "https://<TUNNEL URL>"
    lambda         = "https://<TUNNEL URL>"
    rds            = "https://<TUNNEL URL>"
    route53        = "https://<TUNNEL URL>"
    s3             = "https://<TUNNEL URL>"
    secretsmanager = "https://<TUNNEL URL>"
    ses            = "https://<TUNNEL URL>"
    sns            = "https://<TUNNEL URL>"
    sqs            = "https://<TUNNEL URL>"
    ssm            = "https://<TUNNEL URL>"
    stepfunctions  = "https://<TUNNEL URL>"
    sts            = "https://<TUNNEL URL>"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = var.s3_bucket_name
  acl    = "public-read"
}
