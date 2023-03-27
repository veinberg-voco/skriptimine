#kontroll parameetrite arvule
if($args.Count -ne 3){
echo "kasutusjuhend: .\skriptifailinimi.ps1, kasutajanimi, täisnimi, kirjeldus"
}else{
    $kasutajanimi = $args[0]
    $täisnimi = $args[1]
    $kontokirjeldus = $args[2]
    $KasutajaParool = ConvertTo-SecureString "Krissu423423" -AsPlainText -Force
    New-LocalUser "$kasutajanimi" -Password $KasutajaParool -Fullname "$täisnimi" -description "$kontokirjeldus"
    }