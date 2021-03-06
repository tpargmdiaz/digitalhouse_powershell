$PSDefaultParameterValues['*:Encoding'] = 'utf8'
Invoke-WebRequest -Uri https://raw.githubusercontent.com/olea/lemarios/master/nombres-propios-es.txt -OutFile lista_nombres.txt
foreach($nombre in $(Get-Content -Path .\lista_nombres.txt)) {
    $gender = Invoke-RestMethod -Method Get -Uri https://api.genderize.io/?name=$nombre | Select-Object -ExpandProperty Gender
    $country = Invoke-RestMethod -Method Get -Uri https://api.nationalize.io/?name=$nombre | Select-Object -ExpandProperty Country | Select-Object -First 1 -Property country_id
    Write-Output "El genero de $nombre es: $gender"
    Write-Output "El pais de $nombre es: $($country.country_id)"
    Write-Output " "
        }


      


      