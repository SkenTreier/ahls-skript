# Sisestame kasutajale nime, mida soovime sellele anda
echo -n "Sisesta kasutajanimi: "
read nimi

# Loome kasutaja ja sellega loome ka kataloogi, kuhu soovime kasutajat lisada
useradd -m -d /home/$nimi $nimi

# Anname kasutajale õigused kataloogile.
chown $nimi /home/$nimi

# Anname kasutajale parooli
passwd $nimi

