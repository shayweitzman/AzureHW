$templateFile = "windowsTemplate.json"
New-AzResourceGroupDeployment `
    -ResourceGroupName "WindowsRG" `
    -TemplateFile $templateFile `
    -adminUsername "shaywinuser" `
    -adminPassword "shayWinPass!123" `
    -dnsLabelPrefix "shaywindns"
    
