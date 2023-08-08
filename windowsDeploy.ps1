$templateFile = "windowsTemplate.json"
New-AzResourceGroupDeployment `
    -ResourceGroupName "WindowsRG" `
    -TemplateFile $templateFile `
    -adminUsername "shaywinuser" `
    -adminPassword "shayWinPass!1" `
    -dnsLabelPrefix "shaywindns"