foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {
Write-Output "El nombre es $nombre"
}