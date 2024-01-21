# Jenkins Pipeline for VM Provisioning in vSphere

## Description

This project utilizes Jenkins Pipeline, Terraform, Ansible, and Groovy script to automate the provisioning of VM machines in vSphere. By leveraging the power of Infrastructure as Code (IaC) and automation, this pipeline streamlines the process of creating virtual machines in your vSphere environment.

## Installation

Before setting up the Jenkins Pipeline for VM provisioning, ensure you have the following prerequisites:

1. Kubernetes Cluster: Ensure you have a working Kubernetes cluster where you can deploy containers.

2. Jenkins Container: Deploy Jenkins in your Kubernetes cluster using the provided Jenkins container image.

3. Terraform Container: Deploy the Terraform container in your Kubernetes cluster. This container will be used for running Terraform scripts.

4. Ansible Container: Deploy the Ansible container in your Kubernetes cluster. This container will be utilized for running Ansible playbooks.

## Usage

Follow the steps below to use the Jenkins Pipeline for VM provisioning:

1. **Configure Jenkins**: Set up Jenkins and configure it to access your version control system where the pipeline code resides.

2. **Credentials**: Ensure that Jenkins has the necessary credentials to access your vSphere environment, including credentials for Terraform and Ansible.

3. **Pipeline Configuration**: Create a new Jenkins Pipeline job and configure it to point to the `Jenkinsfile` present in your version control repository.

4. **Jenkins Pipeline**: The Jenkins Pipeline consists of the following stages:

   - **Initialize**: Initializes the Jenkins environment and sets up necessary variables.

   - **Terraform Plan**: Runs a Terraform plan to show the changes that will be applied to the vSphere environment. This is a dry-run to review the changes.

   - **Terraform Apply**: Applies the Terraform changes to provision VM machines in vSphere.

   - **Ansible Provisioning**: Executes Ansible playbooks to perform further configurations on the provisioned VMs.

5. **Triggering the Pipeline**: The pipeline can be triggered manually or automatically based on your preferences.

## Contributing

We welcome contributions from the community and the entire team. If you'd like to contribute to this project, follow these steps:

1. Fork the repository to your own GitHub account.

2. Create a new branch from the `main` branch for your specific contribution.

3. Make your changes and improvements in the new branch.

4. Submit a pull request (PR) to the main repository, detailing the changes you've made.

5. Your PR will be reviewed, and upon approval, it will be merged into the main branch.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). You can find the full license text in the `LICENSE` file.
