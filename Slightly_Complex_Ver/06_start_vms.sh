#!/bin/bash

# Variables
resourceGroupName="MissionControl"
vmName1="MoonRover"
vmName2="MarsRover"

# Start the VMs
echo "Starting VMs..."
az vm start --resource-group $resourceGroupName --name $vmName1
az vm start --resource-group $resourceGroupName --name $vmName2

echo "VMs started."
