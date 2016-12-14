# Installing wireless drivers for Dell Inspiron 1525
sudo apt-get purge bcmwl-kernel-source
sudo apt-get update
sudo apt-get install firmware-b43-installer
echo 'You need to reboot your system.';
