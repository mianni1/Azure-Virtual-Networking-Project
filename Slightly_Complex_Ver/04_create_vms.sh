#!/bin/bash

# Variables
resourceGroupName="MissionControl"
vmName1="MoonRover"
vmName2="MarsRover"
vnetName="SpaceHighway"
subnetName1="MoonBase"
subnetName2="MarsColony"

# Create a VM in each subnet
echo "Creating VMs..."
az vm create --resource-group $resourceGroupName --name $vmName1 --image UbuntuLTS --vnet-name $vnetName --subnet $subnetName1 --generate-ssh-keys --size Standard_B1s
az vm create --resource-group $resourceGroupName --name $vmName2 --image UbuntuLTS --vnet-name $vnetName --subnet $subnetName2 --generate-ssh-keys --size Standard_B1s

echo "VMs created."
