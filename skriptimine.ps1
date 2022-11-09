$KasutjaParool = ConvertTo-SecureString 'Parool1!' -AsPlainText -Force
# Loome kasutaja jaoks parool
# Loome kasutaja
New-LocalUser 'kasutaja1' -Password $KasutjaParool -FullName 'Esimene kasutaja' -Description 'local account' 