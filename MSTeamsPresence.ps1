param(
    [Parameter()]
    [string[]]$Presence
)
if ([string]::IsNullOrEmpty($Presence)) {
    $FullPresence = "--reset-presence"
    Write-Host "No Option Entered - Presence Reset
Available Presence Options:
available
dnd
be-right-back
away
offline" -ForegroundColor Cyan
}
else {
    $FullPresence = "--set-presence-to-$Presence"
}
Write-Host $FullPresence
$mspath = Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\App Paths\ms-teams.exe" -Name "(Default)"
Start-Process -FilePath $mspath -ArgumentList $FullPresence