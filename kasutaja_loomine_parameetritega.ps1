# vajalikud parameetrid
param(
$kasutajanimi,
$Taisnimi,
$KontoKirjeldus
)
# Loome kasutaja jaoks parool
$KasutjaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# Loome kasutaja
New-LocalUser $kasutajanimi -Password $KasutjaParool -FullName $Taisnimi -Description $KontoKirjeldus