# Disable system speaker
rmmod pcspkr
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
