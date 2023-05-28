#!/bin/bash

# Variables
resourceGroupName="MissionControl"
vmName1="MoonRover"
vmName2="MarsRover"

# Stop the VMs
echo "Stopping VMs..."
az vm stop --resource-group $resourceGroupName --name $vmName1
az vm stop --resource-group $resourceGroupName --name $vmName2

echo "VMs stopped."
