$PSDefaultParameterValues['*:Encoding'] = 'utf8'
Invoke-WebRequest -Uri https://raw.githubusercontent.com/olea/lemarios/master/nombres-propios-es.txt -OutFile lista_nombres.txt
foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {
Write-Output "El nombre es $nombre"
}