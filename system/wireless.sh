# How to install a driver for the Broadcom series of PCI wireless cards
# src - https://ubuntuforums.org/showthread.php?t=2214110

# The key to finding the correct driver for any network card is the pci.id.
# To find out which one you have run the following command:
lspci -nn -d 14e4:
# You will get something like this:
# Broadcom Corporation BCM4306 802.11bgn Wireless Network Adapter [14e4:4320] (rev 03)
# So what you will need at the end. The pci.id is: [14e4:4320] (rev 03)
# For example, if you previously installed the bcmwl-kernel-source package, 
# you will need to remove it by using the purge method:
# (I use this even if I have just installed Ubuntu)
sudo apt-get purge bcmwl-kernel-source
# If you have just installed Ubuntu, you will need to build an index of available packages before we can install your driver:
sudo apt-get update
# Now use the pci.id you found in the grid below to find the method to install your driver.
sudo apt-get install <package>
# And then reboot system

# Table 
#pci.id                     12.04 LTS                             14.04 LTS and Later

#14e4:0576                  Special case #1                       Special case #1
#14e4:4301                  firmware-b43legacy-installer          firmware-b43legacy-installer
#14e4:4306                  firmware-b43legacy-installer          firmware-b43legacy-installer
#14e4:4306 rev 2            firmware-b43legacy-installer          firmware-b43legacy-installer
#14e4:4306 rev 3            firmware-b43-installer                firmware-b43-installer
#14e4:4307                  firmware-b43-installer                firmware-b43-installer
#14e4:4311                  firmware-b43-installer                firmware-b43-installer
#14e4:4312                  firmware-b43-installer                firmware-b43-installer
#14e4:4313                  firmware-b43-installer                firmware-b43-installer
#14e4:4315                  firmware-b43-lpphy-installer          firmware-b43-installer
#14e4:4318                  firmware-b43-installer                firmware-b43-installer
#14e4:4319                  firmware-b43-installer                firmware-b43-installer
#14e4:4320 rev 02           firmware-b43legacy-installer          firmware-b43legacy-installer
#14e4:4320 rev 03           firmware-b43-installer                firmware-b43-installer
#14e4:4324                  firmware-b43-installer                firmware-b43-installer
#14e4:4325                  firmware-b43legacy-installer          firmware-b43legacy-installer
#14e4:4328                  bcmwl-kernel-source                   firmware-b43-installer
#14e4:4329                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:432a                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:432b                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:432c                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:432d                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:4331                  firmware-b43-installer                firmware-b43-installer
#14e4:4353                  Special case #1                       Special case #1
#14e4:4357                  Special case #1                       Special case #1
#14e4:4358                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:4359                  bcmwl-kernel-source                   bcmwl-kernel-source
#14e4:4365                  Special case #2                       bcmwl-kernel-source
#14e4:43a0                  unknown                               bcmwl-kernel-source
#14e4:43b1 	    	         unknown		                           bcmwl-kernel-source
#14e4:4727                  Special case #3                       Special case #1
