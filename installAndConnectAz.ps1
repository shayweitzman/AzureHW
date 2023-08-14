$vmName = 'simple-vm'
$resourceGroupName = 'WindowsRG2'
$identityName = 'shayIdentity2'
$subscriptionId = convertfrom-json (az account list --query "[?isDefault].id | [0]")

Write-Host "Creating managed identity $identityName on $resourceGroupName"
New-AzUserAssignedIdentity -ResourceGroupName $resourceGroupName -Name  $identityName -Location 'eastus'

Write-Host "Installing Azure-PowerShell to $vmName"
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptString 'Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force;Install-Module -Name Az -Scope AllUsers -Force'

Write-Host "Assign managed identity $identityName to $vmName"
$identity = Get-AzADServicePrincipal -SearchString $identityName

Write-Host "Assign Contributor and Storage Blob Data Owner roles to managed identity $identityName"
New-AzRoleAssignment -ObjectId $identity.id  -RoleDefinitionName 'Contributor'  -Scope /subscriptions/$subscriptionId
New-AzRoleAssignment -ObjectId $identity.Id  -RoleDefinitionName 'Storage Blob Data Owner'  -Scope /subscriptions/$subscriptionId
$vm = Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
Update-AzVM -ResourceGroupName $resourceGroupName -VM $vm -IdentityType UserAssigned -IdentityID "/subscriptions/$subscriptionId/resourcegroups/$resourceGroupName/providers/Microsoft.ManagedIdentity/userAssignedIdentities/$identityName" 

Write-Host "Connecting Azure..."
Invoke-AzVMRunCommand `
-ResourceGroupName $resourceGroupName `
-VMName $vmName `
-CommandId 'RunPowerShellScript' `
-ScriptString 'Connect-AzAccount -Identity'
Write-Host "Connected!"
