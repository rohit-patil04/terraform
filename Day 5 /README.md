Terraform Variables: Input, Local & Output

🧩 What Are Terraform Variables?

Terraform variables allow your infrastructure code to be dynamic, reusable, secure, and environment-independent.
They help avoid hardcoding values and make configurations clean and maintainable.

🔹 4. Types of Variables in Terraform

Terraform supports multiple variable types to structure your data.

🟦 Primitive Types

🟩 Collection Types

🟧 Structural Types



Terraform provides:

Input Variables → Accept values from the user

Local Values → Internal computed expressions

Output Values → Return important values after deployment


🔹 1. Input Variables
Definition

Input variables are parameters that allow users to pass values into Terraform modules.

Purpose

Avoid hardcoding

Reuse the same Terraform code for dev/test/prod

Clean separation between configuration & values

Accept values from CLI, tfvars, environment, or pipelines


  Declaration (variables.tf)

  variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t2.micro"
}


Usage (main.tf)  

instance_type = var.instance_type


🔹 2. Local Values
Definition

Locals are internal variables used to simplify repeated or complex expressions.

Purpose

Reduce repetition

Improve readability

Combine or compute values

Example (locals.tf)

locals {
  common_tags = {
    Project     = "MyApp"
    Environment = var.environment
  }

  instance_name = "server-${var.environment}"
}


Usage:-
tags = local.common_tags

✔ Locals cannot be overridden.
✔ Used only within the module.


🔹 3. Output Values
Definition

Outputs return useful information after Terraform applies the infrastructure.

Purpose

Display values like IPs, URLs, ARNs

Pass values between modules

Provide information for CI/CD or scripts

Example (outputs.tf)

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "Public IP of the EC2 instance"
}


Terraform Output Example

public_ip = 13.232.110.112


🔶 Combined Flow: Input → Local → Output

Input Variable (var)
        ↓
Local Value (local)
        ↓
Output Value (output)


var.environment → local.instance_name → output.server_name

