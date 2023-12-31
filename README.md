# AzureHW

[![Build Status](https://dev.azure.com/shaywn2/shaywn2/_apis/build/status%2Fshayweitzman.AzureHW?branchName=master)](https://dev.azure.com/shaywn2/shaywn2/_build/latest?definitionId=3&branchName=master)


## Project Milestones

### Azure Subscription Setup
- Established a free Azure subscription account to facilitate resource deployment.

### ARM Template for Storage Accounts
- Implemented an Azure Resource Manager (ARM) template to define storage account configurations.
- Utilized the ARM template to deploy two distinct storage accounts.

### ARM Template for Windows Server
- Developed an ARM template describing the specifications of a Windows server.

### Azure PowerShell Installation and Connection on the Windows Server: 
- Installing Azure PowerShell on the Windows server and establishing a connection to Azure, enabling efficient management of Azure resources through PowerShell scripts.

### Continuous Deployment (CD) Pipeline
- Employed Azure DevOps pipeline to automate continuous deployment.

### Blob Management Script
- Created a script to manage blobs within Azure storage accounts.
- The script achieved the creation, uploading, and copying of 100 blobs from one storage account to another through the Windows server.

## Main Topics Explored

### Azure Resource Manager
Azure Resource Manager (ARM) is a service that provides a way to manage and organize resources in Azure by grouping them into logical units called resource groups. ARM allows you to deploy, manage, and monitor resources as a whole, using declarative templates for consistent and repeatable provisioning.

### Azure Storage Accounts
Azure Storage Accounts provide a scalable and secure way to store various types of data in the cloud, including blobs, files, tables, and queues. They offer redundancy options, access controls, and support for different data types, making them a fundamental building block for many Azure solutions.

### Azure DevOps Pipeline
Azure DevOps Pipeline is a robust automation platform that enables continuous integration and continuous delivery (CI/CD) workflows. It allows you to define, build, test, and deploy applications and infrastructure code in an automated and reliable manner, ensuring fast and consistent releases.

### Managed Identities
Azure Managed Identities simplify authentication for applications and services by eliminating the need for manual credential management. These identities, automatically managed by Azure, offer secure and seamless access to Azure resources, enhancing overall application security and reducing complexity.

### Storage Account - Containers - Blobs Hierarchy
In Azure Storage Accounts, data is organized into a hierarchical structure. At the top level, you have the Storage Account itself. Within a Storage Account, you create containers, which are logical units for grouping blobs. Each container can hold multiple blobs, which are individual pieces of data. Blobs can be of various types, such as block blobs for files, page blobs for virtual hard disks, or append blobs for log data. This hierarchy allows for efficient data organization and management within Azure Storage.

## Dashboard
![Dashboard](https://github.com/shayweitzman/AzureHW/blob/master/Dashboard.jpeg?raw=true)
