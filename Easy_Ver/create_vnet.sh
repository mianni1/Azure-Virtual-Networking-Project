#!/bin/bash

# Create a resource group
az group create --name myResourceGroup --location eastus

# Create a virtual network
az network vnet create --resource-group myResourceGroup --name myVnet --address-prefix 192.168.0.0/16

# Create the first subnet
az network vnet subnet create --resource-group myResourceGroup --vnet-name myVnet --name mySubnet1 --address-prefix 192.168.1.0/24

# Create the second subnet
az network vnet subnet create --resource-group myResourceGroup --vnet-name myVnet --name mySubnet2