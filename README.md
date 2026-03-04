**📌 Project Overview**

This project demonstrates how to provision an EC2 instance using Amazon EC2 and deploy a static website using Apache HTTP Server, fully automated with Terraform.

The infrastructure is created as code and the web server installation is automated using a user data script.

**🏗 Architecture**

User → Internet → Security Group → EC2 → Apache → Static Website
↓
S3 Bucket (State / Storage)

**🛠 Tech Stack**

- AWS

- Terraform

- Linux (Amazon Linux)

- Apache HTTP Server

- GitHub

- s3 bucket 

**⚙️ What This Project Does**

- Creates a Security Group allowing HTTP (Port 80)

- Launches an EC2 instance

- Create Amazon S3 bucket

- Installs Apache automatically using user_data

- Deploys a static website

- Outputs the public IP of the instance

**🚀 Deployment Steps**

1️. Clone the Repository
git clone https://github.com/your-username/ec2-static-website-terraform.git

open git bash and run below cmd
cmd: cd ec2-static-website-terraform/terraform

2.Generate Public & Private key

cmd: ssh-keygen
provide the file_name

usage:
Private key → Used by Terraform for SSH connection
Public key → Uploaded to EC2 (via key pair)

3. Initialize Terraform
terraform init

4. Plan the Infrastructure
terraform plan

5. Apply the Configuration
terraform apply

After successful deployment, Terraform will output the public IP.

**🌐 Access the Website**

Open your browser and enter:

http://<public-ip>

You should see your deployed static website.

**🔐 Security Configuration**

Security Group allows:

Port 22 (SSH)

Port 80 (HTTP)

EC2 instance launched inside default VPC

Key pair used for secure SSH access
