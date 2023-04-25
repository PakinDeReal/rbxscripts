Clear-Host
function Test-Administrator  
{  
    [OutputType([bool])]
    param()
    process {
        [Security.Principal.WindowsPrincipal]$user = [Security.Principal.WindowsIdentity]::GetCurrent();
        return $user.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator);
    }
}

if(-not (Test-Administrator))
{
    # TODO: define proper exit codes for the given errors 
    Write-Error "This script must be executed as Administrator.";
    exit 1;
}

$ErrorActionPreference = "Stop";

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$gui                             = New-Object system.Windows.Forms.Form
$gui.ClientSize                  = New-Object System.Drawing.Point(738,427)
$gui.text                        = "Roblox Manager"
$gui.TopMost                     = $false
$gui.FormBorderStyle = 'Fixed3D'
$gui.MaximizeBox = $false
$gui.BackColor                   = [System.Drawing.ColorTranslator]::FromHtml("#232323")

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Roblox Manager"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(33,45)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',15,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Install"
$Button1.width                   = 179
$Button1.height                  = 106
$Button1.location                = New-Object System.Drawing.Point(35,148)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',30)
$Button1.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#417505")
$Button1.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#7ed321")

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "ReInstall"
$Button2.width                   = 179
$Button2.height                  = 106
$Button2.location                = New-Object System.Drawing.Point(257,149)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',30)
$Button2.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#f5a623")
$Button2.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#f8e71c")

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Delete"
$Button3.width                   = 179
$Button3.height                  = 106
$Button3.location                = New-Object System.Drawing.Point(472,149)
$Button3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',30)
$Button3.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#d0021b")
$Button3.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#ff001f")

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Return oof"
$Button4.width                   = 179
$Button4.height                  = 106
$Button4.location                = New-Object System.Drawing.Point(257,273)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',30)
$Button4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button4.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#2D2D2D")

$gui.controls.AddRange(@($Label1,$Button1,$Button2,$Button3,$Button4))

function Install{
    Set-Location "$Env:TEMP"
    Write-Host 'Getting Roblox..'
    Invoke-WebRequest https://setup.rbxcdn.com/Roblox.exe -o x.exe
    Start-Process x.exe
    Write-Host 'Done Installing Roblox :D'
    Start-Sleep -Seconds 30
    Remove-Item x.exe -Force
}
function Delete {
    Write-Host 'Deleting roblox..'
    Remove-Item -Path "$Env:USERPROFILE\AppData\Local\Roblox" -Recurse -Force
    Remove-Item -Path "$Env:USERPROFILE\AppData\Local\Temp\crashpad_roblox" -Recurse -Force
    Remove-Item -Path "$Env:USERPROFILE\AppData\Local\Temp\Roblox" -Recurse -Force
    Set-Location "$Env:USERPROFILE\AppData\Local\Temp\"
    Remove-Item -Path "C:\ProgramData\Roblox" -Recurse -Force
    Remove-Item -Path "C:\Program Files (x86)\Roblox" -Recurse -Force
    Remove-Item RBX-*.*
    Write-Host 'Done Deleting Roblox..'
}

function BringBackOof {
    Set-Location "C:\Program Files (x86)\Roblox\Versions\version-40b6a27c6c4d46ef\content\sounds"
    Rename-Item ouch.ogg -NewName "buh.ogg"
    Write-Host 'Bringing back our fav oof sound..'
    Invoke-WebRequest https://static.wikia.nocookie.net/roblox/images/6/61/Uuhhh.ogg/revision/latest?cb=20190328163654 -o ouch.ogg
    Write-Host 'Done! have fun with the oof sound'
}

Write-Host 'Roblox manager loaded'
Write-Host '----------------'

$Button1.Add_Click({
    Install
})

$Button2.Add_Click({
    Delete
    Install
})

$Button3.Add_Click({
    Delete
})

$Button4.Add_Click({
    BringBackOof
})

[void]$gui.ShowDialog()
Write-Host '----------------'