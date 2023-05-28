#!/bin/bash

# Variables
resourceGroupName="MissionControl"
nsgName1="MoonShield"
nsgName2="MarsShield"
priority1="100"
priority2="200"
sshSourceIpAddress="0.0.0.0/0"    # Change this to your desired SSH source IP address or IP range
rdpSourceIpAddress="0.0.0.0/0"    # Change this to your desired RDP source IP address or IP range
destinationSSHPort="22"   # SSH port
destinationRDPPort="3389"   # RDP port

# Create network security groups
echo "Creating network security groups..."
az network nsg create --resource-group $resourceGroupName --name $nsgName1
az network nsg create --resource-group $resourceGroupName --name $nsgName2

# Configure NSG rules for SSH
echo "Configuring NSG rules for SSH..."
az network nsg rule create --resource-group $resourceGroupName --nsg-name $nsgName1 \
    --name "AllowSSHFromIP" --priority $priority1 --source-address-prefixes $sshSourceIpAddress \
    --destination-port-ranges $destinationSSHPort --access Allow --protocol Tcp --direction Inbound

az network nsg rule create --resource-group $resourceGroupName --nsg-name $nsgName2 \
    --name "AllowSSHFromIP" --priority $priority2 --source-address-prefixes $sshSourceIpAddress \
    --destination-port-ranges $destinationSSHPort --access Allow --protocol Tcp --direction Inbound

# Configure NSG rules for RDP
echo "Configuring NSG rules for RDP..."
az network nsg rule create --resource-group $resourceGroupName --nsg-name $nsgName1 \
    --name "AllowRDPFromIP" --priority $priority1 --source-address-prefixes $rdpSourceIpAddress \
    --destination-port-ranges $destinationRDPPort --access Allow --protocol Tcp --direction Inbound

az network nsg rule create --resource-group $resourceGroupName --nsg-name $nsgName2 \
    --name "AllowRDPFromIP" --priority $priority2 --source-address-prefixes $rdpSourceIpAddress \
    --destination-port-ranges $destinationRDPPort --access Allow --protocol Tcp --direction Inbound

echo "Network security groups created and NSG rules configured."