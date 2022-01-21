sudo -u

# Install chrome,code,discord,slack and dbeaver

sudo apt-get install snapd -y
sudo snap install slack --classic
sudo snap install postman
sudo snap install htop
sudo snap install telegram-desktop

# Download .deb package
mkdir install_dpkg
cd install_dpkg

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb
wget https://az764295.vo.msecnd.net/stable/899d46d82c4c95423fb7e10e68eba52050e30ba3/code_1.63.2-1639562499_amd64.deb
wget https://download.dbeaver.com/community/21.3.2/dbeaver-ce_21.3.2_amd64.deb
wget https://autoupdate.termius.com/linux/Termius.deb

sudo dpkg -i *.deb

# Spotify Install
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update -y && sudo apt-get install spotify-client -y

# Git configure
sudo apt-get install git -y
git config --global user.name "Your User"
git config --global user.email user@mail.com

# Gnome-Tweaks
sudo apt install gnome-tweaks -y