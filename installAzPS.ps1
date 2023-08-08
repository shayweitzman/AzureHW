$vmName = 'simple-vm'
$resourceGroupName = 'WindowsRG'
# Write-Host "Installing Azure-CLI to $vmName"
# Invoke-AzVMRunCommand `
# -ResourceGroupName $resourceGroupName `
# -VMName $vmName `
# -CommandId 'RunPowerShellScript' `
# -ScriptString '$ProgressPreference = ''SilentlyContinue''; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList ''/I AzureCLI.msi /quiet''; Remove-Item .\AzureCLI.msi'
# Write-Host "Azure-CLI Installed successfully to $vmName!"
Write-Host "Connecting Azure..."
az vm identity assign -g $resourceGroupName -n $vmName  --identities shayIdentity
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptString 'az login --identity'

Write-Host "Connected!"
