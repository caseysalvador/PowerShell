# $shell = $host.UI.RawUI
# $shell.BackgroundColor = "DarkGray"
# Clear-Host

$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value


Write-Host "Greetings, $curUser!" -foregroundColor $foregroundColor
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Green
Write-Host "Your computer name is: $curComp" -foregroundColor Green
Write-Host ""
Write-Host " __      __       .__                                   _____                                                                      "  -foregroundColor Green
Write-Host "/  \    /  \ ____ |  |   ____  ____   _____   ____     /  _  \   ____   ____   ____ ___.__. _____   ____  __ __  ______            "  -foregroundColor Green
Write-Host "\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \   /  /_\  \ /    \ /  _ \ /    <   |  |/     \ /  _ \|  |  \/  ___/            "  -foregroundColor Green
Write-Host " \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/  /    |    \   |  (  <_> )   |  \___  |  Y Y  (  <_> )  |  /\___ \             "  -foregroundColor Green
Write-Host "  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  > \____|__  /___|  /\____/|___|  / ____|__|_|  /\____/|____//____  >  /\  /\  /\"  -foregroundColor Green
Write-Host "       \/       \/          \/            \/     \/          \/     \/            \/\/          \/                  \/   \/  \/  \/" `n -foregroundColor Green

# function Prompt {

#     Write-Host -NoNewLine "P" -foregroundColor $foregroundColor
#     Write-Host -NoNewLine "$" -foregroundColor Green
#     Write-Host -NoNewLine "[" -foregroundColor Yellow
#     Write-Host -NoNewLine ("{0:HH}:{0:mm}:{0:ss}" -f ($time)) -foregroundColor $foregroundColor
#     Write-Host -NoNewLine "]" -foregroundColor Yellow
#     Write-Host -NoNewLine ">" -foregroundColor Red

#     $host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"
    

#     Return " "

# }