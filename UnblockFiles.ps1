<########################################################################
#########################################################################
#                                                                       #
#                     Unblock Files PS Script                           #
#                                                                       #
#########################################################################
#########################################################################
#                                                                       #
# Name:       UnblockFiles.ps1                                          #
# Version:    1.0                                                       #
# Author:   Casey Salvador                                              #
# Created:    28 Sep 2017                                               #
# Usage:      Powershell Script to Unblock Files                        #
#                                                                       #
#########################################################################>

## VARIABLE: Get Current User
$currentUserName = [Environment]::UserName

## FUNCTION: Check File Path
function Check-FilePath{
  ## Declare CmdLets
  [CmdletBinding()]
  param (
    ## Default Path (Must Type Path)
    [string]$Path = "C:\Users\$currentUserName\"
  )

  ## Validate File Path
  if (!(Test-Path -Path $Path)){
    ## Display Event Error Message
    DisplayEvent -Lvl ERROR -Msg "Invalid file path. Please re-run and select the appropriate file path."

    ## Exit Function
    Break
  }
  elseIf (Test-Path -Path $Path){
  ## List Files
    # Recursively gets the child item of file path and lists them.
  $listFiles = Get-ChildItem -recurse $Path -name | % { $_ + "`r"}
    # List the Files
  $listFiles
  return $UnblockPath = $Path
  }
}

## FUNCTION: Unblock-Files
function Unblock-Files{
  ## Declare CmdLets
  [CmdletBinding()]
  param (
    [string]$Path = $UnblockPath
  )

  ## Unblock files
  $unblockFiles = Get-ChildItem -recurse $Path | Unblock-File
  ## Display Event Success Message
  DisplayEvent -Lvl SUCCESS -Msg "Unblock Files Successfully."
}

## FUNCTION: Display Event
function DisplayEvent{
  ## Declare CmdLets
  [CmdletBinding()]
  param(
    [ValidateSet("ERROR","SUCCESS")]
    [string]$Lvl,
    [string]$Msg
  )
  ## Output Event
  Switch($lvl){
      "ERROR"{
          Write-Host "[" -NoNewline
          Write-Host -ForegroundColor Red "ERROR" -NoNewline
          Write-Host "] " -NoNewline
          Write-Host -ForegroundColor Red "$Msg"
          Write-Host " "
      }

      "SUCCESS"{
          Write-Host "[" -NoNewline
          Write-Host -ForegroundColor Green "SUCCESS" -NoNewline
          Write-Host "] $Msg"
      }

  }
}
