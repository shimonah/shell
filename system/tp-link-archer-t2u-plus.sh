#Installation on Ubuntu 19.10 with kernel 5.3 (works with ubuntu 18)

#Open the terminal and execute the following commands :
 
sudo apt install git dkms
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
sudo ./dkms-install.sh

# restart computer
