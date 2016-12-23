# To disable 'system programm problem detected' after login
# You can do this in two ways
# First go to
cd /var/crash
# and delete all log files
sudo rm *
# Second you can disable this function showing this window at all
sudo nano /etc/default/apport
# and rewrite
enabled=0
# Although disabling apport is not recommended.
