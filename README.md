# fluentai

The package allows the registered users of the Fluent AI platform to download the resources to setup the Fluent platform infrastructure on their AWS Accounts.

Infrastructue resources created:

1. Networking resources (VPC, Subnets and security groups) In case you want to use the ones already setup, skip this step
2. Fluent Load balancer
3. Fluent API 
4. Fluent Conversational Builder ECS resources
5. Fluent UI WebApp
6. Fluent Builder WebApp

## Getting Started

Please follow README.md guide for installation of each of the above components.

### Prerequisites

Please contact utterworks to register your account to use Fluent Platform.

### Installing

Download the latest packages using the following commands:

```bash
bash scripts/download_packages.sh
```

Follow the installation sections for README.md for each of the sections.



## Versioning

We use [SemVer](http://semver.org/) for versioning.

## Authors

- **Kaushal Trivedi** - utterworks plc

