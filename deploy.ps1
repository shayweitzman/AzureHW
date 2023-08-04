$templateFile = "/Users/shay/Desktop/AzureHW/AzureHW/storageAccountTemplate.json"
New-AzResourceGroupDeployment `
  -Name blanktemplate `
  -ResourceGroupName myResourceGroup `
  -TemplateFile $templateFile