in pumi %
sudo sh bootstrap-salt.sh -M -A 127.0.0.1 -i pumi stablei 3006.17
sudo systemctl status salt-minion.service 
sudo systemctl status salt-master.service 


ssh in every minion:
# Download bootstrap script
curl -fsSL -o bootstrap-salt.sh https://github.com/saltstack/salt-bootstrap/releases/latest/download/bootstrap-salt.sh

# Install salt-minion pointing to pumi
# -A = master address
# -i = minion id (change for each node)
sudo sh bootstrap-salt.sh -A 192.168.57.30 -i $(hostname) stable 3006.17
