param(
  [string]$DestinationPath,
  [string]$ShortcutKey
)
$WshShell = New-Object -comObject WScript.Shell
$ScriptDir = Split-Path $MyInvocation.MyCommand.Path
$Shortcut = $WshShell.CreateShortcut($DestinationPath)
$Shortcut.TargetPath = $ScriptDir + "\init-debug-visual-studio.cmd"
$Shortcut.HotKey = $ShortcutKey
$Shortcut.Save()