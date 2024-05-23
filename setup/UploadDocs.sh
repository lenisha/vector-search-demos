export subscription_id=YOUR_SUBSCRIPTION_ID
export azure_storage_account=YOUR_AZURE_STORAGE_ACCOUNT_NAME
export azure_storage_key=YOUR_AZURE_STORAGE_KEY


az storage container create --account-name $azure_storage_account --subscription $subscription_id --name margies --public-access blob --auth-mode key --account-key $azure_storage_key --output none

az storage blob upload-batch -d margies -s data --account-name $azure_storage_account --auth-mode key --account-key $azure_storage_key  --output none
