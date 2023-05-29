# Azure CLI Networking Project: Space Exploration

Welcome to my Azure CLI Networking Project. This project is all about setting up a virtual network in Azure, with a fun space exploration theme. I'll be creating a virtual network and two subnets, all using the Azure CLI.

## Getting Started

1. Ensure you have the Azure CLI installed on your machine and you're logged into your Azure account. If not, [download Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) and run `az login` to login.

2. Make sure the `Microsoft.Network` provider is registered with your subscription. If it's not, you can register it via the Azure Portal (All Services -> Subscriptions -> Your Subscription -> Settings -> Resource Providers -> Microsoft.Network -> Register).

3. Clone this repository to your local machine.

4. Navigate to the directory where you've cloned the repository.

## Notes

- The scripts in this project are written for Bash because I am on a MacBook (and macOS is superior to Windows... Sometimes ;) ). If you're using Windows, you can run the scripts using [Git Bash](https://gitforwindows.org/).

- After running through scripts 01-06 in order, you can then SSH/RDP into the VM's provided you have configured your NSG rulings correctly, a rookie error I made while testing this project was not allowing SSH/RDP traffic through the NSG specifically from my source IP, so make sure you do this! Otherwise you will sit there pulling your hair out wondering why you can't connect to your VM's like I was. 

- Remember to delete the Resource Group when you're done with the project to avoid any unnecessary charges. If you are using the Azure Students Subscription like I am, you should get like $100 credit per month, so you should be fine to leave it running for a while if you want to play around with it. Remember stopping is not the same as deleting, so you will still be charged for the resources if you stop them. The CLI will warn you of this too.

- Also, I have created AzureResources.csv which is just a CSV extract of the resource group created as a part of 01_create_resource_group.sh, this is just to show you what the resource group looks like in the Azure Portal.

- You will find in parts of Logs.txt and the AzureResources.csv some UIDs are replaced with all x's, I just chucked the actual logs into OpenAI's playground and got it to run through all of the text and replace everything that could be sensetive. I did this because I didn't want to share my actual UIDs with the world, but I also wanted to show what the logs look like.

## Boring Documentation you can read if you want

- [Azure CLI Documentation](https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest)
- [Azure CLI Networking Documentation](https://docs.microsoft.com/en-us/cli/azure/network?view=azure-cli-latest)
- [Azure CLI VM Documentation](https://docs.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest)
- [Azure CLI VNet Documentation](https://docs.microsoft.com/en-us/cli/azure/network/vnet?view=azure-cli-latest)
- [Azure CLI Subnet Documentation](https://docs.microsoft.com/en-us/cli/azure/network/vnet/subnet?view=azure-cli-latest)
- [Azure CLI NSG Documentation](https://docs.microsoft.com/en-us/cli/azure/network/nsg?view=azure-cli-latest)
- [Azure CLI NIC Documentation](https://docs.microsoft.com/en-us/cli/azure/network/nic?view=azure-cli-latest)
- [Azure CLI Public IP Documentation](https://docs.microsoft.com/en-us/cli/azure/network/public-ip?view=azure-cli-latest)