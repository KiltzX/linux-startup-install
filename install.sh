sudo -i
sudo apt-get install snapd -y
export PATH=$PATH:/snap/bin
sudo apt-get install curl -y
# Install some tools

sudo snap install slack --classic
sudo snap install postman
sudo snap install htop
sudo snap install telegram-desktop
sudo snap install discord
sudo snap install enpass

# Download .deb package
mkdir install_dpkg
cd install_dpkg

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb #google-chrome
wget https://az764295.vo.msecnd.net/stable/e8a3071ea4344d9d48ef8a4df2c097372b0c5161/code_1.74.2-1671533413_amd64.deb #vscode
wget https://download.dbeaver.com/community/21.3.2/dbeaver-ce_21.3.2_amd64.deb #dbeaver
wget https://autoupdate.termius.com/linux/Termius.deb #termius

sudo dpkg -i *.deb

# Spotify Install
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update -y && sudo apt-get install spotify-client -y

# Git configure
# sudo apt-get install git -y # if you dont have git, remove this comment
git config --global user.name  {{YOUR_USERNAME}}
git config --global user.email {{YOUR_EMAIL}}

# Gnome-Tweaks
sudo apt install gnome-tweaks -y

# vim
sudo apt install vim -y

# zsh
sudo apt install zsh -y

# autoremove
sudo apt autoremove -y