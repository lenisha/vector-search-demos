#!/bin/bash
export subscription_id=YOUR_SUBSCRIPTION_ID
export resource_group=YOUR_RG
export location=westus
export unique_id=361251


echo "Creating resource group..."
az group create --name $resource_group --location $location --subscription $subscription_id --output none

echo "Creating storage..."
az storage account create --name ai102str$unique_id --subscription $subscription_id --resource-group $resource_group --location $location --sku Standard_LRS --encryption-services blob --default-action Allow --allow-blob-public-access true --only-show-errors --output none

echo "Uploading files..."

key_json=$(az storage account keys list --subscription $subscription_id --resource-group $resource_group --account-name ai102str$unique_id --query "[?keyName=='key1'].{keyName:keyName, permissions:permissions, value:value}" -o json)
key_string=$(echo $key_json | jq -r '.[0].value')
AZURE_STORAGE_KEY=$key_string

az storage container create --account-name ai102str$unique_id --name margies --public-access blob --auth-mode key --account-key $AZURE_STORAGE_KEY --output none
az storage blob upload-batch -d margies -s data --account-name ai102str$unique_id --auth-mode key --account-key $AZURE_STORAGE_KEY --output none 

echo "Creating search service..."
echo "(If this gets stuck at '- Running ..' for more than a couple minutes, press CTRL+C then select N)"
az search service create --name ai102srch$unique_id --subscription $subscription_id --resource-group $resource_group --location $location --sku basic --output none

echo "-------------------------------------"
echo "Storage account: ai102str$unique_id"
az storage account show-connection-string --subscription $subscription_id --resource-group $resource_group --name ai102str$unique_id
echo "----"
echo "Search Service: ai102srch"
echo "  Url: https://ai102srch$unique_id.search.windows.net"
echo "  Admin Keys:"
az search admin-key show --subscription $subscription_id --resource-group $resource_group --service-name ai102srch$unique_id
echo "  Query Keys:"
az search query-key list --subscription $subscription_id --resource-group $resource_group --service-name ai102srch$unique_id

echo "Cognitive Services account: ai102cog$unique_id"
az cognitiveservices account create --subscription $subscription_id --resource-group $resource_group --name ai102cog$unique_id --sku S0 --location $location --kind CognitiveServices
echo "Cognitive Services Account Keys:"
az cognitiveservices account keys list --subscription $subscription_id --resource-group $resource_group --name ai102cog$unique_id
