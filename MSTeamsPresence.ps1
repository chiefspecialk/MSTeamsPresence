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
$mspath = $ENV:USERPROFILE + '\AppData\Local\Microsoft\WindowsApps'
Start-Process -FilePath "ms-teams.exe" -WorkingDirectory $mspath -ArgumentList $FullPresence