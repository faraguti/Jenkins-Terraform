# Automated AWS Infrastructure Deployment with Jenkins and Terraform

This project showcases the integration of Jenkins and Terraform for automating the deployment of AWS infrastructure. The Jenkins pipeline automates the provisioning of AWS resources using Terraform configurations provided in this repository.

<br> </br>
## Jenkins Pipeline for Terraform Automation

The Jenkins pipeline defined in the `Jenkinsfile` automates the deployment process using Terraform. It includes the following stages:

1. `Git Checkout:` Clones the Terraform configuration repository from GitHub.
2. `Plan:` Initializes Terraform and generates an execution plan.
3. `Approval:` Optionally prompts for plan approval before applying changes.
4. `Apply:` Applies the Terraform execution plan to provision AWS resources.

<br> </br>
## Terraform Configuration

### Main Terraform Configuration (`main.tf`)

```
resource "aws_instance" "ec2-instance-1" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Jenkins-Instance"
  }
}
```

### Provider Configuration (provider.tf)

```
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"  
}
```
<br> </br>
## Usage

1. Configure your Jenkins server to use this repository for pipeline execution.
2. Configure Jenkins pipeline parameters, including `autoApprove` for automatic apply.
3. Run the Jenkins pipeline to initiate the deployment process.
4. Review the generated Terraform plan and approve if necessary.
5. The pipeline applies the changes to provision the AWS resources.
<br> </br>
## Notes

- Ensure you update the AWS credentials and region in the Jenkins pipeline.
- Adapt the pipeline stages and configurations to suit your deployment process.
- Review and update the Terraform configuration to match your infrastructure requirements.

