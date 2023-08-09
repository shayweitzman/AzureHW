$resourceGroupName = 'WindowsRG'
$vmName = 'simple-vm'
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptPath .\createCopyBlobs.ps1