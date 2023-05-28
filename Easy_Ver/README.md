# Azure Virtual Network Project

Objective: Create an Azure Virtual Network (VNet) with subnets, Network Security Groups (NSGs), and a Network Interface.

This project walks through the process of creating a VNet in Azure. A VNet is a representation of your own network in the cloud, complete with subnets, private IP address ranges, and network gateways.

## Requirements
- A MacBook :D
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed on your MacBook.
- An active Azure account. If you don't have one, you can create a [free account](https://azure.microsoft.com/en-us/free/).

## Instructions
1. Clone this repository to your local machine.
2. Navigate to the directory containing the scripts.
3. Run each script with the command `bash <script-name.sh>` in your terminal. For example, `bash create_vnet.sh`.

## Contents
1. `create_vnet.sh` - Script to create a VNet and subnets.
2. `create_nsg.sh` - Script to create a Network Security Group (NSG).
3. `create_nic.sh` - Script to create a Network Interface.
4. `create_nic_usage.md` - Guide on usage of create_nic.sh
