[System.Console]::Title = "Getting Net Details..."
Function Get-OutsideNet {
      [CmdletBinding()]
      param ()
      $OutsideDetails = (Invoke-RestMethod -UseBasicParsing -Uri https://ifconfig.co/json -Headers @{
            Accept = 'application/json'
      })
      [hashtable]$OutsideNet = @{
            "External IP"       = $OutsideDetails.ip;
            "Country"           = $OutsideDetails.country;
            "City"              = $OutsideDetails.city;
            "Service"           = $OutsideDetails.user_agent.product;
            "Service Version"   = $OutsideDetails.user_agent.version;
            "Full Service Name" = $OutsideDetails.user_agent.comment;
      }
      return $OutsideNet | Format-Table
}
Function Get-InsideNet {
      [CmdletBinding()]
      param ()
      [array]$properties = @(
            "InterfaceAlias",
            "IPAddress",
            "AddressFamily",
            "AddressState",
            "ValidLifetime",
            "PreferredLifetime"
      )
      [array]$InsideNetDetails = Get-NetIPAddress | Select-Object -Property $properties |
                                                      Sort-Object -Property InterfaceAlias |
                                                      Format-Table
      return $InsideNetDetails
}
try { Get-InsideNet }
catch { Write-Host "There was an issue getting internal net data." }
try { Get-OutsideNet }
catch { Write-Host "There was an issue getting external net data." }
[System.Console]::Title = "Showing Net Details"