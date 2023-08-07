# Automated Infrastructure Deployment with Jenkins and Terraform

This project showcases the integration of Jenkins and Terraform for automating the deployment of AWS infrastructure. The Jenkins pipeline automates the provisioning of AWS resources using Terraform configurations provided in this repository.

## Jenkins Pipeline for Terraform Automation

The Jenkins pipeline defined in the `Jenkinsfile` automates the deployment process using Terraform. It includes the following stages:

1. **Git Checkout:** Clones the Terraform configuration repository from GitHub.
2. **Plan:** Initializes Terraform and generates an execution plan.
3. **Approval:** Optionally prompts for plan approval before applying changes.
4. **Apply:** Applies the Terraform execution plan to provision AWS resources.

## Terraform Configuration

### Main Terraform Configuration (`main.tf`)

```hcl
resource "aws_instance" "ec2-instance-1" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Jenkins-Instance"
  }
}
