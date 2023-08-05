$templateFile = "storageAccountTemplate.json"
New-AzResourceGroupDeployment `
  -Name storageAccountsDeploy `
  -ResourceGroupName storageAccounts `
  -TemplateFile $templateFile `
  -storageAccountNamePrefix "samplestorageaccx" `
  -numberOfAccounts 2