# aws-static-website-hosting-using-terraform
Terraform is an infrastructure-as-code software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.
## Infrastructure

![image](https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform/assets/104528282/7e630475-f5a6-4c25-9e5e-2c73c52fa0e2)

Terraform streamlines the deployment process, allowing quick setup of an S3 bucket-based static website. It is utilizing Terraform's declarative syntax, specify desired resources and their configurations in code, ensuring consistency and repeatability. Terraform seamlessly integrate with AWS services through Terraform's provider model, enabling straightforward management of S3 buckets and associated resources.

## Setting Up
1. Clone this project in your preferred directory. <br>
```$ git clone https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform```
4. Make a new file in the directory and name it as ```providers.tf``` and put inside the following credentials of your AWS account
```
provider "aws" {
  region = "us-east-1"
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_KEY>"
}
```
## Running Our Terraform Configuration
3. Open up the terminal within the directory then run this command inside. This is to initialize our local repo to terraform <br>
```$ terraform init```
4. Run this after initializing. Its for sanity checks of our changes.<br>
```$ terraform plan```
5. The terraform plan command creates an execution plan that lets you preview the changes that Terraform plans to make to your infrastructure. You must apply these changes using this command.<br>
```$ terraform apply```

## Checking our Website if it Works
1. Open up S3 to check if the creation was success

![image](https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform/assets/104528282/2e036df2-333b-4d54-a7b9-c7bf2fd81378)

3. Go inside the bucket then click on ```resume.html```then go to **Properties**
4. Copy the Object URL then open a new browser to check if it works

![image](https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform/assets/104528282/bb6bbc07-9fd0-4a35-8706-0466c1a41263)
(I blocked my information here so it should work on you)
![image](https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform/assets/104528282/3ad68c5d-85c3-48b4-b16f-b7c9917359cc)

## Deleting our Bucket
1. Run this command to destroy the current infrastructure ran by Terraform
```$ terraform destroy -auto-approve```


