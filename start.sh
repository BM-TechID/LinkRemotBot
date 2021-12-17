chmod +x *
sleep 3; echo "Starting... installer "
./installer
sleep 2; echo "Run script..."
./run
sleep 2; echo "Send to bot..."
./bot
sleep 2; clear; echo " Selesai"
echo ""
host=$(cat /logremot.txt|grep tunneled|awk '{print $1}')
echo "Remot Host: $host"
