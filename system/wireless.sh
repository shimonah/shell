# How to install a driver for the Broadcom series of PCI wireless cards
# src - https://ubuntuforums.org/showthread.php?t=2214110

# The key to finding the correct driver for any network card is the pci.id.
# To find out which one you have run the following command:
lspci -nn -d 14e4:
