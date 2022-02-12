# AWS-LAB-Terraform
AWS LAB By Terraform

lab1 --> [AWS-VPC-LAB1_By-Terraform](https://blog.utshop.tw/2022/01/05/2022-01-05-AWS_VPC-LAB1_By-Terraform/)
lab2 --> [AWS-VPC-LAB2_By-Terraform](https://blog.utshop.tw/2022/01/09/2022-01-09-AWS_VPC-LAB2_By-Terraform/)
lab3 --> [AWS-VPC-LAB3_By-Terraform](https://blog.utshop.tw/2022/02/11/2022-02-12-AWS_VPC-LAB3_By-Terraform/)

## How to use
- add aws key pair that is name of **my-test.pem** with aws console dashboard.
- create AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY by IAM tool
- Install Terraform
- Download AWS-LAB-Terraform
  ex: lab2
  ```bash
  git clone https://github.com/88gocode/AWS-LAB-Terraform.git
  cd AWS-LAB-Terraform
  git checkout lab2
  ```
- add AWS_ACCESS_KEY_ID ,and AWS_SECRET_ACCESS_KEY to environment variables
  myauth_key.sh
  ```bash
  #!/bin/bash
  export AWS_ACCESS_KEY_ID='your key id'
  export AWS_SECRET_ACCESS_KEY='your secret key'
  ```
  ```bash
  source ./myhome-auth_key.sh
  ```
- Deploy with Terraform
  ```bash
  terraform init
  terraform plan
  terraform apply  -auto-approve
  ``` 




