$publishModuleSplat = @{
    Path        = ".\KeepAlive"
    NuGetApiKey = $ENV:nugetapikey
    Verbose     = $true
    Force       = $true
    Repository  = "PSGallery"
    ErrorAction = 'Stop'
}

"API Key: $($publishModuleSplat.NuGetApiKey)"
"Files in module output:"
Get-ChildItem $publishModuleSplat.Path -Recurse -File |
    Select-Object -Expand FullName


"Publishing [$($publishModuleSplat.Path)] to [$($publishModuleSplat.Repository)]"

Publish-Module @publishModuleSplat