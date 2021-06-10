# Challenge-PJ

## Table of Contents
01. [Introduction](#Introduction)
02. [GCP](#GCP)
03. [AWS](#AWS)

## Introduction

This POC/Challenge is requested by PJ to apply in the DevOps Engineer position and this consists of the creation of a module to implement a VM and this must be include with 4 sections:

|N°| Acepted critiar                   |
|--| ----------------------------------|
|1 | Manage machine type with variable |
|2 | This machine need HDD 30GB        |
|3 | Attach IP public (not dinamyc)    |
|4 | Run metadata startup script       |

This POC/Challenge run with those app:

|APP       | Version |
|----------|---------|
|Terraform | v1.0.0  |
|Gcloud SDK| 344.000 |

The commands needed to implement those resources is:

```
terraform init ;\
terraform validate ;\
terraform plan ;\
terraform apply -auto-approve
```

*This last command apply the parameter ´-auto-approve´ is to run NON-interactive*

## GCP
In this section I created in GCP VM with CentOS-7 and the custom resources requested. 

```Mermaid
graph TD
    B["fa:fa-twitter Folder GCP" ]
    B --> C[fa:fa-ban Modules]
    B --> D(main.tf)
    B --> E(variable.tf)
    B --> F(terraform.tfvars)
    B --> G(config.tf)
    C --> A[fa:fa-ban template]
    C --> H[fa:fa-ban instance-group]
    H --> I(main.tf)
    H --> J(variable.tf)
    A --> K(init-script.sh)
```
## AWS
In this section I created in AWS VM with CentOS-7 and the custom resources requested. 
