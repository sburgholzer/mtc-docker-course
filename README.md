# mtc-docker-course

## local_infrastructure
This is all from the course from More Than Certified.

## aws_infrastructure
This is my own work converting it from local to AWS services using Terraform


# Deploy the S3 bucket
aws cloudformation create-stack \
  --stack-name terraform-state-infrastructure \
  --template-body file://aws_infrastructure/cloudformation/terraform-state.yml \
  --capabilities CAPABILITY_IAM

# Add permissions to the OIDC role
aws cloudformation create-stack \
  --stack-name terraform-state-oidc-policy \
  --template-body file://aws_infrastructure/cloudformation/oidc-role-policy.yml \
  --parameters \
    ParameterKey=OIDCRoleArn,ParameterValue=<your-oidc-role-arn> \
    ParameterKey=StateBucketName,ParameterValue=<my-terraform-state-bucket>
  --capabilities CAPABILITY_IAM


{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:GetAuthorizationToken",
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:GetRepositoryPolicy",
                "ecr:DescribeRepositories",
                "ecr:ListImages",
                "ecr:DescribeImages",
                "ecr:BatchGetImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:PutImage"
            ],
            "Resource": "*"
        }
    ]
}
