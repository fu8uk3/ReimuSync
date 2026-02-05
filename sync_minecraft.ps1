Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$reimuArt = @"
universal minecraft dotfiles installer v. 14.8.8
© fu8uk3 www.autismcore.ru 2026
=======================
⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀
⠀⢠⠏⠁⠀⢸⠏⠉⠉⠛⠒⠦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠴⠖⠚⠛⠋⠉⠹⣏⠉⠉⠙⡆⠀⠀⠀⠀
⠀⠸⡄⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠲⣦⣶⣛⣛⣉⣹⣦⣶⣚⣉⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢀⡇⠀⠀⠀
⠀⠀⠳⡄⠀⣿⠀⠀⠀⠀⠀⠀⢀⣠⡤⠖⠚⠛⠉⠉⠀⠀⠀⠀⠈⠉⠉⠛⠛⠶⢤⣄⠀⠀⠀⠀⠀⢸⡇⠀⡜⠀⠀⠀⠀⠀
⠀⠀⠀⢹⠀⡏⠀⠀⠀⠀⣠⡶⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢦⡀⠀⠀⠀⠈⡇⢸⠀⠀⠀⠀⠀
⠀⠀⠀⣸⠀⡇⠀⠀⢀⡶⠋⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⢷⠀⠹⡆⠀⠀⠀
⠀⣰⠞⠁⢸⠀⠀⢰⣟⠁⠀⠀⠀⠀⠀⠀⣼⡇⠀⠀⠀⠀⠀⠀⢠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⢸⡀⠀⠈⢧⡀⠀⠀
⢰⡁⠀⠀⢸⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀⣰⠃⣇⠀⠀⠀⠀⠀⠀⢸⡎⢳⣄⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠸⡇⠀⠀⠀⡇⠀⠀
⠀⠣⣄⣀⣼⠀⣸⠇⠀⠀⠀⠀⠈⠉⣹⠏⠉⢿⡉⠀⠀⠀⠀⠀⠈⣏⠉⠙⣯⡉⠉⠉⠀⠀⠀⢿⣤⣷⣤⡴⣺⠁⠀⠀⠀⠀
⠀⠀⣠⠟⠉⠉⣻⠀⠀⠀⠀⠀⠀⢰⠏⠀⠤⠬⢷⡄⠀⠀⠀⠀⠀⡿⠤⠤⠈⠻⢦⣀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠈⢿⣄⠀⠀
⠀⣼⠏⠀⠀⠀⠸⡇⠀⠀⠀⠀⣴⣯⣤⣤⣤⣤⣦⣬⠳⢤⣄⣠⣾⣷⣾⣿⣿⣿⣿⣿⠶⢤⣄⠀⠀⢸⠇⠀⠀⠀⠛⣧⠀⠀
⠐⠿⣦⣀⠀⠀⠀⣻⣄⠀⢀⡿⠛⡟⠉⢹⣿⣿⣿⣿⡄⠀⠀⠉⣿⠀⣸⣿⣿⣿⣿⣿⣄⠀⠀⡟⠳⣿⠀⠀⠀⢀⣀⣨⡷⠀
⠀⠀⠀⠈⠉⠛⢚⡏⠙⢶⣏⣀⣤⣷⣴⣿⣿⣿⣿⣿⠇⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⡇⠀⠹⡏⠉⠉⠉⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⣏⠁⠀⢿⡿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠙⠿⠿⠿⠿⢋⣼⠁⠀⠀⡇⠀⠀⢻⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⢻⡀⠀⢈⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣞⣩⣠⣤⣼⡃⠀⠀⠀⢠⡇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠻⠤⠤⢴⣺⡗⠚⠋⠹⡿⡙⠲⠤⣀⣀⣈⣋⣁⣀⡠⠤⢖⣿⠓⣿⠀⠀⠀⣿⣉⣓⠦⠼⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⡖⠋⠉⠀⢿⡄⠀⠀⡇⡟⢦⡀⠀⢠⣾⣉⣣⡀⠀⣠⠞⢻⠀⠀⣿⠀⠀⣼⠃⠀⢸⠙⢦⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣸⠁⢱⡀⠀⠀⠈⠳⣄⣠⣇⡇⠀⠉⢙⡿⠀⠀⠈⣿⠛⠃⠀⢺⡦⣼⣆⡴⠃⠀⠀⡾⠀⠀⢸⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠘⢦⣀⢳⠀⠀⣀⡤⠞⠋⠁⢻⣄⢀⣼⠁⠀⠀⠀⢸⡄⠀⢀⣾⠁⠀⠈⠉⠛⠒⢦⣧⣤⡾⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢈⡭⠷⡏⠉⠀⠀⠀⠀⠀⠙⠳⠿⠶⣶⣶⣿⡭⠥⠶⠟⠁⠀⠀⠀⠀⢀⡾⠁⠀⢈⠇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠏⠀⠀⢠⡞⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠻⣄⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⠟⠁⠀⠀⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⠙⠲⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠛⠁⠀⢀⡴⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⣀⠀⠀⠉⠛⠲⠦⠤⠤⠤⠴⠶⠚⠋⠁⠀⣀⣤⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⣦⣄⣀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣶⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡿⠋⠉⠉⠹⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⠿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠈⠛⠻⠟⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"@

$form = New-Object Windows.Forms.Form
$form.Text = "ReimuSync"
$form.Size = New-Object Drawing.Size(800,600)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false
$form.BackColor = [System.Drawing.Color]::Black
$form.TopMost = $true

$label = New-Object Windows.Forms.Label
$label.Text = $reimuArt + "`n`n[ ПОДГОТОВКА... ]"
$label.Font = New-Object Drawing.Font("Consolas", 10)
$label.ForeColor = [System.Drawing.Color]::White
$label.Dock = "Fill"
$label.TextAlign = "MiddleCenter"
$form.Controls.Add($label)

$exitTimer = New-Object Windows.Forms.Timer
$exitTimer.Interval = 3000
$exitTimer.Add_Tick({ $form.Close() })

$workTimer = New-Object Windows.Forms.Timer
$workTimer.Interval = 1000
$workTimer.Add_Tick({
    $workTimer.Stop()
    
    $scriptPath = [System.IO.Path]::GetDirectoryName([System.Diagnostics.Process]::GetCurrentProcess().MainModule.FileName)
    $source = Join-Path $scriptPath ".minecraft"
    $appData = "$env:APPDATA\.minecraft"
    $backup = "$env:APPDATA\.minecraft_backup_$((Get-Date).ToString('yyyyMMdd_HHmm'))"
    
    try {
        if (-not (Test-Path $source)) { 
            throw "Папка .minecraft не найдена рядом с программой!" 
        }
        
        $label.Text = $reimuArt + "`n`n[ КОПИРОВАНИЕ... ]"
        $label.ForeColor = [System.Drawing.Color]::Yellow
        $form.Refresh()

        if (Test-Path $appData) {
            Rename-Item -Path $appData -NewName $backup -Force -ErrorAction Stop
        }
        
        Copy-Item -Path $source -Destination $appData -Recurse -Force -ErrorAction Stop
        
        $label.Text = $reimuArt + "`n`n[ УСПЕХ! ]"
        $label.ForeColor = [System.Drawing.Color]::Green
        $exitTimer.Start()
    }
    catch {
        $label.Text = $reimuArt + "`n`n[ ОШИБКА! ]`n" + $_.Exception.Message
        $label.ForeColor = [System.Drawing.Color]::Red
    }
})

$form.Add_Shown({ $workTimer.Start() })
$form.ShowDialog() | Out-Null