#!/bin/bash

# Variables
resourceGroupName="MissionControl"
location="westus"

# Create a resource group
echo "Creating resource group..."
az group create --name $resourceGroupName --location $location

echo "Resource group created."