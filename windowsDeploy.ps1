param (
    [string]$adminUsername,
    [string]$adminPassword,
    [string]$dnsLabelPrefix
)
$templateFile = "windowsTemplate.json"
$resourceGroupName = 'WindowsRG2'

New-AzResourceGroup -Name $resourceGroupName -Location "eastus"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword `
    -dnsLabelPrefix $dnsLabelPrefix
