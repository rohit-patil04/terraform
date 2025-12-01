Installing Terraform on Windows

Follow these steps to download and install Terraform on a Windows system.

✅ 1. Download Terraform

Open the official Terraform download page:
👉 https://developer.hashicorp.com/terraform/downloads

Scroll to the Windows section.

Download the ZIP file based on your system:

windows_amd64.zip → for most Windows 10/11 systems

windows_arm64.zip → for ARM processors


✅ 2. Extract the ZIP File

Right-click on the downloaded ZIP file.

Click Extract All.

You will get a single file: terraform.exe


✅ 3. Add Terraform to System PATH

This allows you to run terraform from any folder.

Move terraform.exe to a folder such as: C:\terraform\

Open Control Panel → System & Security → System

Click Advanced system settings

Click Environment Variables

Under System Variables, find Path → click Edit

Add the path of your Terraform folder: C:\terraform\

Click OK and save.


✅ 4. Verify Installation

Open Command Prompt and run: terraform --version

You should see something like: You should see something like: Terraform v1.12.1
on windows_amd64

🔌 What is a Provider in Terraform?

A provider in Terraform is a plugin that allows Terraform to interact with different cloud platforms and services such as AWS, Azure, GCP, GitHub, Kubernetes, and more.

Providers act as the bridge between your Terraform code and real cloud resources.


🔌 Configuring AWS Provider in Terraform

After installing Terraform, configure the AWS provider to deploy AWS resources.


🟧 1. Install AWS CLI (Optional but Recommended)

Download AWS CLI:
👉 https://aws.amazon.com/cli/Enter:

AWS Access Key

AWS Secret Key

Region (e.g., ap-south-1)

Output: json

Configure your credentials: aws configure


🟧 2. Create Provider File (provider.tf)
Add this file in your Terraform project: provider.tf

🟧 3. Initialize the Provider

Run: terraform init
This will download the AWS provider plugin.

🟧 4. terraform plan

Run: terraform plan
Generates an execution plan that shows what Terraform will create, modify, or delete.

🟧 5. terraform apply.

Run: terraform apply
Applies the changes defined in the Terraform configuration to create/update infrastructure.

Then confirm with: Yes


🧹 Optional: Destroy Resources

Run: terraform destroy
Removes all resources created by Terraform.
