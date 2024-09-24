# AWS Project

## Overview
This project demonstrates the use of various AWS services and Terraform to manage cloud infrastructure. The goal is to create a scalable and secure architecture using best practices.

## Technologies Used
- **Terraform**: Infrastructure as Code (IaC) tool for building, changing, and versioning infrastructure safely and efficiently.
- **AWS Services**: 
  - EC2 (Elastic Compute Cloud)
  - S3 (Simple Storage Service)
  - IAM (Identity and Access Management)
  - VPC (Virtual Private Cloud)
  - ALB (Application Load Balancer)
  - ASG (Auto Scaling Group)
  - Internet Gateway (IGW)
  - NAT Gateway
  - Security Groups
  - Routing Tables

## Project Structure
. ├── ALB.tf # Configuration for Application Load Balancer ├── ASG.tf # Configuration for Auto Scaling Group ├── EC2.tf # Configuration for EC2 instances ├── IAM.tf # IAM roles and policies ├── IGW.tf # Internet Gateway configuration ├── RT.tf # Routing Table configuration ├── SG.tf # Security Group configuration ├── provider.tf # Provider configuration (AWS) ├── subnets.tf # Subnet configuration ├── terraform.tfstate # Terraform state file ├── terraform.tfstate.backup # Backup of the state file └── vpc.tf # VPC configuration



## Getting Started

### Prerequisites
- **Terraform**: Make sure you have Terraform installed. You can download it from [here](https://www.terraform.io/downloads.html).
- **AWS Account**: You will need an AWS account to deploy the infrastructure.

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/IbrahimAamer1/AWS-PROJECT.git
   cd AWS-PROJECT
