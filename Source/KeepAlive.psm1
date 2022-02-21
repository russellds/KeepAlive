if (Test-Path -Path (Join-Path $PSScriptRoot -ChildPath 'Classes')) {
    $classes = @(Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'Classes/*.ps1') -Recurse -ErrorAction Stop)
}

if (Test-Path -Path (Join-Path $PSScriptRoot -ChildPath 'Private')) {
    $private = @(Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'Private/*.ps1') -Recurse -ErrorAction Stop)
}

$public = @(Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'Public/*.ps1') -Recurse -ErrorAction Stop)


foreach ($import in @($classes + $private + $public)) {
    try {
        . $import.FullName
    } catch {
        throw "Unable to dot source [$( $import.FullName )]"
    }
}

Export-ModuleMember -Function $public.BaseName
