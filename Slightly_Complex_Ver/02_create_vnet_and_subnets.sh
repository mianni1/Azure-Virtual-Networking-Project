#!/bin/bash

# Variables
resourceGroupName="MissionControl"
vnetName="SpaceHighway"
subnetName1="MoonBase"
subnetName2="MarsColony"

# Create a virtual network and subnets
echo "Creating virtual network and subnets..."
az network vnet create --resource-group $resourceGroupName --name $vnetName --address-prefixes 10.0.0.0/16 --subnet-name $subnetName1 --subnet-prefix 10.0.0.0/24
az network vnet subnet create --resource-group $resourceGroupName --vnet-name $vnetName --name $subnetName2 --address-prefix 10.0.1.0/24

echo "Virtual network and subnets created."