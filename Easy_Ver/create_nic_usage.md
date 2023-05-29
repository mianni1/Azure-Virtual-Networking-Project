# Usage: create_nic.sh

This script creates a Network Interface in your Azure VNet using the Azure CLI. 

## How to Use
1. Open your terminal.
2. Navigate to the directory containing the `create_nic.sh` script.
3. Run the script using the command `bash create_nic.sh`.

Please note that "myResourceGroup", "myNic", "myVnet", and "mySubnet1" in the script are placeholders. Replace these with your actual resource names. Ensure your VNet and Subnet have been created before running this script, as the NIC is dependent on these.