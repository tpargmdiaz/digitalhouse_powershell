$nombre = "Emilio"

foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {
    if ($nombre -eq "Juan") {
        Write-Output "Encontre a $nombre"
        } else {
        $otrosNombres++
        }
    }

Write-Output "Se revisaron otros $otrosNombres nombres"