clear; echo "Oke tunggu sebentar sedang memperbarui link..."
sleep 2; echo "Mengirim ke telegram"; ./bot
sleep 2
host=$(cat logremot.txt|grep tunneled|awk '{print $1}')
echo "New Host: $host"
