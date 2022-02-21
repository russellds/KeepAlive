function Stop-KeepAlive {
    <#
        .Synopsis
        Stops preventing the screen saver from locking your screen.
        .DESCRIPTION
        Stops the prevent screen saver timeout PowerShell job.
        .EXAMPLE
        Example of how to use this cmdlet
        .EXAMPLE
        Another example of how to use this cmdlet
        .INPUTS
        Inputs to this cmdlet (if any)
        .OUTPUTS
        Output from this cmdlet (if any)
        .NOTES
        General notes
    #>
    process {
        Get-Job -Name 'KeepAlive' |
            Remove-Job -Force
    }
}
