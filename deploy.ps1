$templateFile = "/Users/shay/Desktop/AzureHW/AzureHW/firstDeploy.json"
New-AzResourceGroupDeployment `
  -Name blanktemplate `
  -ResourceGroupName myResourceGroup `
  -TemplateFile $templateFile