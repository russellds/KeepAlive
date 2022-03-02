@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'KeepAlive.psm1'

    # Version number of this module.
    ModuleVersion = '0.0.0'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID = '78be76db-4199-4a3c-8828-c3b5ac7fbae6'

    # Author of this module
    Author = 'Russell Slater'

    # Company or vendor of this module
    # CompanyName = 'Unknown'

    # Copyright statement for this module
    Copyright = 'Copyright 2022 Russell Slater'

    # Description of the functionality provided by this module
    Description = 'Module that keeps the Windows Screen Saver from turning on.'

    # Minimum version of the PowerShell engine required by this module
    # PowerShellVersion = ''

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()

    # Variables to export from this module
    VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Test', 'Windows', 'Unlock')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/russellds/KeepAlive/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/russellds/KeepAlive'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = ''

            # Prerelease string of this module
            Prerelease = 'preview'

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}
