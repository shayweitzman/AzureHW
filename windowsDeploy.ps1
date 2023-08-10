$templateFile = "windowsTemplate.json"
$resourceGroupName = 'WindowsRG2'

New-AzResourceGroup -Name $resourceGroupName -Location "eastus"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
