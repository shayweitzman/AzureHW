$templateFile = "/templates/storageAccountTemplate.json"
$resourceGroupName = 'storageAccounts'
# New-AzResourceGroup -Name $resourceGroupName -Location "eastus"
New-AzResourceGroupDeployment `
  -Name  storageAccountsDeploy `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -storageAccountNamePrefix "justryieshsay" `
  -numberOfAccounts 1
