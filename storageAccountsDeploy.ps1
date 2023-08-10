$templateFile = "storageAccountTemplate.json"
$resourceGroupName = 'storageAccounts'
New-AzResourceGroup -Name $resourceGroupName -Location "eastus"
New-AzResourceGroupDeployment `
  -Name  storageAccountsDeploy `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile 'storageAccountsParameters.json'