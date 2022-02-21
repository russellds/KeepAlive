#requires -Module @{ModuleName = "ModuleBuilder"; ModuleVersion = "2.0.0"}, Configuration

[CmdletBinding()]
param(
    # A specific folder to build into
    $OutputDirectory,

    # The version of the output module
    [string]
    $SemVer,

    # The PreRelease version of the output module
    [string]
    $PreRelease
)
Push-Location $PSScriptRoot -StackName BuildTestStack

try {
    $gitVersion = gitversion.exe |
        ConvertFrom-Json

    if (-not $Semver) {
        $null = $PSBoundParameters.Add('SemVer', $gitVersion.SemVer)
    }

    $sourcePath = Join-Path -Path $PSScriptRoot -ChildPath 'build.psd1'

    $sourcePath

    Build-Module @PSBoundParameters -SourcePath $sourcePath -Target CleanBuild
} catch {
    throw $PSItem
} finally {
    Pop-Location -StackName BuildTestStack
}
