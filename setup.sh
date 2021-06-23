echo setting up
sudo apt-get update 

echo installing git
sudo apt-get install git


git clone https://github.com/wybert/setup_adsl_machine.git

echo installing chrome and chromedriver
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f --yes
mv chromedriver /usr/local/bin

echo installing Mambaforge
bash Mambaforge-Linux-x86_64.sh


echo installing mongodb
wget https://repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/4.4/multiverse/binary-amd64/mongodb-org-mongos_4.4.6_amd64.deb
sudo dpkg -i mongodb-org-mongos_4.4.6_amd64.deb

echo installing tmux
sudo apt-get install -y tmux