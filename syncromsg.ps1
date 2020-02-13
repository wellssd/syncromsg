# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# msg.ps1 - Display popup message
#
# Detail - Display popup message to currently logged in user using Syncro script framework.  Should be configured to
#          run as logged in user.  A runtime script variable $message should be configured to contain the message that
#          will be presented to the user.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# Date     Notes
# -------- ------------------------------------------------------------------------------------------------------------
# 20190805 Inital version (software@tsmidwest.com)
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


###
### Definitions
###


###
### PowerShell runtime options
###
$ErrorActionPreference = "SilentlyContinue"
$WarningPreference     = "SilentlyContinue"


###
### Modules
###
Import-Module C:\ProgramData\Syncro\bin\module.psm1


###
### Display message popup indicating request has been submitted
###
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("$($message).", 0, "Notice", 0) | Out-Null
