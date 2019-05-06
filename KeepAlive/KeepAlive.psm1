function Start-KeepAlive
{
    <#
        .Synopsis
        Prevents the screen saver from locking your screen.
        .DESCRIPTION
        Long description
        .EXAMPLE
        Example of how to use this cmdlet
        .EXAMPLE
        Another example of how to use this cmdlet
        .INPUTS
        Inputs to this cmdlet (if any)
        .OUTPUTS
        Output from this cmdlet (if any)
        .NOTES
            To prevent RDP sessions from ending, you must be focused on the RDP session.
    #>
    [CmdletBinding()]
    param
    (
        # Param1 help description
        [Parameter(ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$Key = "{F15}",
        [Parameter(ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [int]$Interval = 60
    )

    process
    {
        $properties = @{
            Name = 'KeepAlive'
            ScriptBlock = {
                param(
                    [string]$Key,
                    [int]$Interval
                )

                Add-Type -AssemblyName System.Windows.Forms

                while( $true ) {

                    Start-Sleep -Seconds $Interval

                    [System.Windows.Forms.SendKeys]::SendWait($Key)
                }
            }
            ArgumentList = $Key, $Interval
        }

        Start-Job @properties
    }
}

function Stop-KeepAlive
{
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
    process
    {   
        Get-Job -Name 'KeepAlive' |
            Remove-Job -Force
    }
}