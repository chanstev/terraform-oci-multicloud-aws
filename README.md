# OCI Multicloud Landing Zone for AWS

![Landing Zone logo](./images/landing_zone_300.png)

## Overview

A collection of [terraform modules](https://developer.hashicorp.com/terraform/language/modules), templates and tutorials that helps you provision Oracle Database@AWS and related components via Infrastructure as Code (IaC).

## Prerequisites

To use the Terraform modules and templates in your environment, you must install the following software on the system from which you execute the terraform plans:

- [Terraform](https://developer.hashicorp.com/terraform/install)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [OCI CLI](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)
- [AWS terraform provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [OCI terraform provider](https://registry.terraform.io/providers/oracle/oci/latest/docs)

## Templates
These module automates the provisioning of components for running Oracle Database@AWS. Each template can run independently and default input values are configured which can be overridden per customer's preferences.
- [Quickstart for Autonomous Database](./templates/aws-oci-adbd-quickstart/README.md)
- [Quickstart for CDB/PDB](./templates/aws-oci-cdb-pdb-quickstart/README.md)

## Execution
Navigate into the `templates` directory.

**Note:** The Terraform state file writes to the directory from where you execute plans. You should keep this file in case you want to use Terraform to modify the environment configuration later. Refer to the Terraform documentation for more persistent and shareable ways to save state.

### Initialization

When running for first time, initialize the workspace directory using:

Terraform:

``` shell
terraform init
```

### Application

To validate changes described without applying

Terraform:

``` shell
terraform plan
```

To apply changes and create resources

Terraform:

``` shell
terraform apply
```

### Destruction

To remove all resources created in above steps, run destroy:

Terraform:

``` shell
terraform destroy
```

## Further Documentation

### Terraform Provider
- [Oracle Cloud Infrastructure Provider](https://registry.terraform.io/providers/oracle/oci/latest/docs)
- [AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

### Terraform Modules
- [OCI Landing Zones](https://github.com/oci-landing-zones/)

**Acknowledgement:** Code derived adapted from samples, examples and documentations provided by above-mentioned providers.

## Help

Open an [issue](https://github.com/oci-landing-zones/terraform-oci-multicloud-aws/issues) in this repository.

## Contributing

This project welcomes contributions from the community. Before submitting a pull request, please [review our contribution guide](./CONTRIBUTING.md).

## Security

Please consult the [security guide](./SECURITY.md) for our responsible security vulnerability disclosure process.

## License

Copyright (c) 2025 Oracle and/or its affiliates.

Released under the Universal Permissive License v1.0 as shown at <https://oss.oracle.com/licenses/upl/>.