$storageAccountNamePrefix = "samplestorageaccxx"
$containerNamePrefix = "samplecontainerx"
$baseDir = "C:\blobs"

# Create the directory if it doesn't exist
if (-not (Test-Path -Path $baseDir -PathType Container)) {
    New-Item -Path $baseDir -ItemType Directory
}

# Loop to create 100 empty .bin files
for ($i = 1; $i -le 100; $i++) {
    $filename = Join-Path -Path $baseDir -ChildPath ("blob$i.bin")
    New-Item -Path $filename -ItemType File
    Write-Host "Created $filename"
}

# Retrieve the accounts' contexts and create one container on each of them.
$srcAccCtx = New-AzStorageContext -StorageAccountName ${storageAccountNamePrefix}1 -UseConnectedAccount
New-AzStorageContainer -Name ${containerNamePrefix}1 -Context $srcAccCtx
$destAccCtx = New-AzStorageContext -StorageAccountName ${storageAccountNamePrefix}2 -UseConnectedAccount
New-AzStorageContainer -Name ${containerNamePrefix}2 -Context $destAccCtx

#Upload blob files to src storage account.
Get-ChildItem -Path $baseDir| Set-AzStorageBlobContent -Container ${containerNamePrefix}1 -Context $srcAccCtx

#Copy blobs from src account to dest account.
$blobs = Get-AzStorageBlob -Context $srcAccCtx -Container ${containerNamePrefix}1
$blobs | Start-AzStorageBlobCopy -Context $srcAccCtx -DestContext $destAccCtx -DestContainer ${containerNamePrefix}2
