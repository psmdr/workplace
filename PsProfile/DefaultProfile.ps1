
Function Check-MDInstalledModules
    {
        $moduleList = @(
            "ExchangeOnlineManagement",
            "ActiveDirectory",
            "PsReadLine",
            "ImportExcel"
            "MsOnline"
            "AzureAD"
            "Microsoft.Graph"

        )

        #Check the list, then put out results. Ask if you want to install --> presnet a list (or all) and choose by number.

    }


Function Load-Exchange 
{
    $installed = 1

    if ($env:ExchangeInstallPath) {
            write-host "Exchange Management Tools are installed"
            $installed = 1
            }
    if (!$env:ExchangeInstallPath) {
        write-host "Exchange Management Tools are not installed" -ForegroundColor red
        $installed = 0
        }


        if (!$exscripts -and $installed -eq 1)
            {

                . "$($env:ExchangeInstallPath)Bin\RemoteExchange.ps1"

                Connect-ExchangeServer -auto -ClientApplication:ManagementShell
            }
        

    Set-AdServerSettings -ViewEntireForest $true
    }





Function Load-EXO
{

    Connect-ExchangeOnline


}




Function CopyLastCommand
    {   
        (Get-History | select -Last 1).COmmandline | clip
        write-host "copied!" -ForegroundColor green

    }


Function CopyOneCommand
    {   
        Get-History

        $i = Read-host -Prompt "Enter Command number"
        (Get-History -Id $i ).COmmandline | clip
        write-host "copied!" -ForegroundColor green

    }


#Let's load Oh-my-posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\MDR.omp.json" | Invoke-Expression  

