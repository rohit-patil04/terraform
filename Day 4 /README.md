📘 Terraform Remote Backend (S3) 

🚀 Overview

This project demonstrates how to configure and use a remote backend in Terraform using Amazon S3 for storing the Terraform state file and DynamoDB for state locking.
Remote backends improve collaboration, enable safe state management, and prevent conflicts during terraform apply.

✅ Definition: Terraform Remote Backend

A Terraform Remote Backend is a storage location outside your local machine where Terraform saves and manages its state file (terraform.tfstate).
Instead of keeping the state locally, the remote backend stores it in a secure, centralized service such as Amazon S3, and uses DynamoDB for state locking.

⭐ Why Use a Remote Backend?

Stores Terraform state securely

Allows team collaboration

Prevents conflicts using state locking

Enables versioning and recovery

Keeps infrastructure state centralized

📌 Example:

S3 → Stores terraform.tfstate

DynamoDB → Locks the state during terraform apply


🏗️ Architecture Diagram

<img width="1400" height="788" alt="image" src="https://github.com/user-attachments/assets/885ec1ee-cd00-4a99-8eaa-c39bf66f04c9" />

<img width="786" height="841" alt="image" src="https://github.com/user-attachments/assets/9f8b51e2-fc8e-409b-af11-4654a6aed8c0" />


🛠️ Prerequisites

Before running the Terraform project, ensure:

AWS Account

IAM user with:

AmazonS3FullAccess

AmazonDynamoDBFullAccess

AWS CLI installed and configured

Terraform installed (v1.0+)

📦 Resources Created
S3 Bucket  == Stores terraform.tfstate remotely

📝 Backend Configuration (backend.tf)

🗂️ Create S3 Bucket or DynamoDB Table (Before Init)

Run these AWS CLI commands (or create manually):

Create S3 Bucket

▶️ Initialize the Remote Backend
Run :- terraform init -reconfigure
This connects Terraform to the remote backend.

📋 Run Terraform
Run:- terraform plan
     terraform apply
     
Your state is now stored remotely:-S3 bucket → terraform.tfstate


✔️ Verify Remote Backend

In AWS Console:

Go to S3 → your bucket → day4.1/terraform.tfstate

Both should show the Terraform state and lock info.


🧽 Clean Up
Run  :- terraform destroy


🙌 Contributors

Rohit Patil — Cloud & DevOps Engineer

Tools used: Terraform, AWS S3, DynamoDB, IAM








  
