# Create an Array of key vaults
$keyVaultArray = @(
	("old-key-vault","new-key-vault"),
	("old-key-vault2","new-key-vault2")

)

# Azure login
az login

# New subscription where to clone the key-vault
$subscription = ""
# New resource group where to clone the key-vault
$resourceGroup = ""
# location of new key vault
$location = "eastus"


# Loop through this array and process each key-vault
foreach($vaultDic in $keyVaultArray){	
	& ".\ProcessKeyVault.ps1" -KeyVaultName $vaultDic[0] -Subscription $subscription -ResourceGroup $resourceGroup -KeyVaultLocation $location -NewKeyVaultName $vaultDic[1]
}