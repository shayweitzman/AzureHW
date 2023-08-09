$resourceGroupName = 'WindowsRG'
$vmName = 'simple-vm'
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptPath \scripts\createCopyBlobs.ps1
