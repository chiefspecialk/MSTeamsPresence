# MSTeamsPresence
# 🟢🟡🔴 MicroSoft Teams Presence 🔴🟡🟢

PowerShell Script to set New MicroSoft Teams Presence

## ⚡ Usage

From terminal enter .\MSTeamsPresence.ps1 <status>

Available status options:

    * available
    * dnd
    * be-right-back
    * away
    * offline

If no status is added it will automatically reset the status.

To use with StreamDeck create a System: Open and enter the following:

pwsh.exe -noprofile -windowstyle Hidden -executionpolicy bypass -noninteractive "MSTeamsPresence.ps1" busy

or

powershell.exe -noprofile -windowstyle Hidden -executionpolicy bypass -noninteractive "MSTeamsPresence.ps1" available