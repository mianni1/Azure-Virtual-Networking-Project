#!/bin/bash

# Create a Network Security Group
az network nsg create --resource-group myResourceGroup --name myNSG

# Associate the NSG with a subnet
az network vnet subnet update --resource-group myResourceGroup --vnet-name myVnet --name mySubnet1 --network-security-group myNSG