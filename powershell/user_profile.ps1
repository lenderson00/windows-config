# Prompt
Import-Module Terminal-Icons
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/takuya.omp.json" | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f'
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+r'


# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
    	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
