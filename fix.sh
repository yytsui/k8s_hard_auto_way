sudo apt remove --purge salt-minion salt-common -y
sudo apt autoremove -y
sudo rm -rf /etc/salt
sudo rm -rf /var/cache/salt
sudo rm -rf /var/log/salt
sudo rm -rf /opt/saltstack
sudo sh bootstrap-salt.sh -A 192.168.57.30 -i $(hostname) stable 3006.17
