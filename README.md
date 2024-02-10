# Static-Website-Hosting-on-AWS-S3-using-Terraform
Terraform is an infrastructure-as-code software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.
## Infrastructure

## Setting Up
1. Clone the project in your preferred directory. <br>
```$ git clone https://github.com/didin012/Static-Website-Hosting-on-AWS-S3-using-Terraform```
2. Then make a new file in the directory and name it as ```providers.tf``` and put inside the following credentials of your AWS account
```
provider "aws" {
  region = "us-east-1"
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_KEY>"
}
```
## Running Our Terraform Configuration
3. After that, open up the terminal within the directory then run this command inside. <br>
```$ terraform init```
4. Wait for a while then run this command afterwards.<br>
```$ terraform plan```
5. The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. You must apply these changes using this command.<br>
```$ terraform apply -auto-approve```

## Checking our Website if it Works
