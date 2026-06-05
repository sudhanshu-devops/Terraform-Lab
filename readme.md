Azure Linux VM Deployment using Terraform

# Architecture

The following resources are provisioned:

- Resource Group
- Virtual Network (VNet)
- Subnet
- Public IP
- Network Interface (NIC)
- Linux Virtual Machine

## Project Structure

├── child_module
│   ├── resource_group
│   ├── vnet
│   ├── subnet
│   ├── public_ip
│   ├── nic
│   └── vm
│
├── parent_module
├── env
│   └── prod
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── provider.tf

# Features
- Modular Terraform Design
- Reusable Child Modules
- Dynamic Resource Creation using for_each
- Nested Map Variables
- Infrastructure as Code (IaC)
- Production Ready Structure
- Easy Environment Expansion (Dev, Test, Prod)
- Infrastructure as Code (IaC)
- Production Ready Structure
- Easy Environment Expansion (Dev, Test, Prod)