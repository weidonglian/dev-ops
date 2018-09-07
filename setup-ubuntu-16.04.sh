# Upgrade
sudo apt update
sudo apt upgrade

# Git
sudo apt-get install -y git

# JRE
sudo apt-get install -y default-jre

# Docker CE
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -a -G docker $USER
