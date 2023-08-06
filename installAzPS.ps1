$vmName = 'simple-vm'
$resourceGroupName = 'WindowsRG1'
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptString 'Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force;Install-Module -Name Az -Scope AllUsers -Force'
