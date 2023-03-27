    $kasutajaparool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
#kasutaja loomine ees-perenimi ning tõlge nimi.perekonnanimi
    $Eesnimi = Read-Host "Sisesta oma eesnimi"
    $Perenimi = Read-Host "Sisesta oma perekonnanimi"
    $kasutajanimi = $Eesnimi.ToLower() + "." + $Perenimi.ToLower()
    $täisnimi = $eesnimi.ToLower() + "." + $Perenimi
    $kirjeldus = "Lokaalne kasutaja -" + $kasutajanimi
    echo "Loodav kasutaja on $username"
    Write-Output "Loodav kasutaja on $($kasutajanimi))"
    $EroorActionPreference = 'silentlycontinue' 
    New-LocalUser $kasutajanimi -Password $kasutajaparool -FullName $täisnimi -Description $kirjeldus
    #kontroll
    if(!$?){
    Write-Output "Tekkinud on tõrge kasutaja loomisega" 
    }
    #Süsteemi teaded tagasi sisse
    $ErrorActionPreference = 'stop'