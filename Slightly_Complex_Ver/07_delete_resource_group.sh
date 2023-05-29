#!/bin/bash

# Variables
resourceGroupName="MissionControl"

# Delete the resource group
echo "Deleting resource group..."
az group delete --name $resourceGroupName --yes --no-wait

echo "Resource group deletion initiated."