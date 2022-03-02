function Start-KeepAlive {
    <#
        .Synopsis
            Prevents the screen saver from locking your screen.
        .DESCRIPTION
            Prevents the screen saver from locking your screen.
        .EXAMPLE
            Example of how to use this cmdlet
        .INPUTS
            None
        .OUTPUTS
            None
        .NOTES
            To prevent RDP sessions from ending, you must be focused on the RDP session.
    #>
    [CmdletBinding()]
    param(
        # Param1 help description
        [Parameter(ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [string]$Key = '{F15}',
        [Parameter(ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [int]$Interval = 60
    )

    process {
        $properties = @{
            Name = 'KeepAlive'
            ScriptBlock = {
                param(
                    [string]$Key,
                    [int]$Interval
                )

                Add-Type -AssemblyName System.Windows.Forms

                while ( $true ) {

                    Start-Sleep -Seconds $Interval

                    [System.Windows.Forms.SendKeys]::SendWait($Key)
                }
            }
            ArgumentList = $Key, $Interval
        }

        Start-Job @properties
    }
}
