$templateFile = "../templates/windowsTemplate.json"
$resourceGroupName = 'WindowsRG'

New-AzResourceGroup -Name $resourceGroupName -Location "eastus"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
    -adminUsername "shaywinuser" `
    -adminPassword "shayWinPass!1" `
    -dnsLabelPrefix "shaywindns"