# Terraform Project

This project is designed to manage AWS S3 resources using Terraform. It includes modules, environment configurations, and CI/CD workflows for different branches.

## Project Structure

```
terraform-project
├── terraform
│   └── modules
│       └── aws
│           └── s3
│               ├── main.tf
│               ├── variables.tf
│               └── outputs.tf
├── envconfig
│   ├── dev.tfvars
│   └── test.tfvars
├── providers.tf
├── backend.tf
├── terragrunt.hcl
├── .github
│   └── workflows
│       ├── dev.yml
│       ├── test.yml
│       └── main.yml
└── README.md
```

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd terraform-project
   ```

2. **Configure Environment Variables**
   - Update the `dev.tfvars` and `test.tfvars` files in the `envconfig` directory with your specific configurations.

3. **Initialize Terraform**
   ```bash
   terraform init
   ```

4. **Plan the Infrastructure**
   ```bash
   terraform plan -var-file=envconfig/dev.tfvars
   ```

5. **Apply the Infrastructure**
   ```bash
   terraform apply -var-file=envconfig/dev.tfvars
   ```

## GitHub Actions

This project includes GitHub Actions workflows for continuous integration and deployment:

- **Development Branch**: `.github/workflows/dev.yml`
- **Testing Branch**: `.github/workflows/test.yml`
- **Main Branch**: `.github/workflows/main.yml`

Each workflow is configured to run Terraform commands specific to its environment.

## Modules

### S3 Module

The S3 module is located in `terraform/modules/aws/s3` and includes:

- `main.tf`: Defines the S3 bucket resource and settings.
- `variables.tf`: Specifies input variables for the module.
- `outputs.tf`: Exports outputs such as bucket name and ARN.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.