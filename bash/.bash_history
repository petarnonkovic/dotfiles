sudo apt update && sudo apt upgrade -y
sudo apt install ubuntu-restricted-extras
sudo apt install ubuntu-restricted-extras -y
sudo apt update
sudo apt install ttf-mscorefonts-installer
sudo apt install --reinstall ttf-mscorefonts-installer
sudo apt autoremove
sudo apt purge ttf-mscorefonts-installer
sudo apt autoremove
sudo apt update
poweroff
sudo apt update && sudo apt upgrade -y
sudo apt install synaptic
synaptic
cat /etc/apt/sources.list
cat /etc/apt/sources.list.d/*
ls /var/lib/update-notifier/package-data-downloads/partial/*
sudo ls /var/lib/update-notifier/package-data-downloads/partial/*
ls /var/lib/update-notifier/package-data-downloads/partial/*
cd /var/lib/update-notifier/package-data-downloads/partial
sudo cd /var/lib/update-notifier/package-data-downloads/partial
la /var/lib/update-notifier/package-data-downloads/partial
sudo la /var/lib/update-notifier/package-data-downloads/partial
sudo ls /var/lib/update-notifier/package-data-downloads/partial
sudo cat /var/lib/update-notifier/package-data-downloads/partial/andale32.exe
sudo rm -rf /var/lib/update-notifier/package-data-downloads/partial/*
sudo ls /var/lib/update-notifier/package-data-downloads/partial
ls
ls snap
cd Documents/
ls
vi tested.txt
cat tested.txt
ed tested.txt
vat
cat tested.txt 
~
cd ~
locate fonts
find fonts
find -h
man find
alias
la
cd .fontconfig/
la
cd -
history
sudo apt --purge --reinstall install ttf-mscorefonts-installer
sudo fc-cache -f -v
cat /proc/sys/vm/swappines
cat /proc/sys/vm/swappiness
gedit admin:///etc/sysctl.conf
man parted
parted -l
sudo parted -l
perl -v
perl -V
rsync --help
snap list
xgc
gnome-shell –version
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
sudo add-apt-repository ppa:linrunner/tlp
tlp-stat -s
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
sudo tlp start
sudo ufw status verbose
sudo ufw enable
ls /etc/default/grub
ls /etc/default/
sudo cp /etc/default/grub /etc/default/grub.bkp
ls /etc/default/
sudo nano /etc/default/grub
fg
sudo update-grub
java -version
sudo apt install gnome-menus gir1.2-gmenu-3.0
sudo apt autoclean
sudo apt clean
sudo apt autoremove
poweroff
exit
cd /usr/bin
la .
ls -lAH . | less
man systemctl
systemctl status bluetooth
ls -lh bluetooth
cd /etc/bluetooth
ls
sudo vi main.conf
cd ..
ll
ls -laH
[[ $- == *i* ]] && echo 'Interactive' || echo 'Not interactive'
ls -alH profile
cat profile
gedit profile
cd profile.d
ls
ls -alH
cd ..
$PATH
print 
print $PATH
echo $PATH
cat /etc/profile | less
echo SOURCE_TRACE
man bash
alias
man strace
echo exit | strace bash -i |& grep '^open'
echo exit | strace bash -i | less
set | less
echo $PATH
sudo gedit profile bash.bashrc
echo $BASH_ENV
$BASH_ENV
echo $BASH
cd ~
echo $BASH_ALIASES
echo $BASH_SOURCE
echo $ENV
echo $HISTFILE
echo $HISTSIZE
printenv
printenv | less
echo $SET_TEST_SHELL_RCFILE \n $SET_TEST_SHELL_PROFILE
echo date
echo $date
echo $(date +%H:%M:%S)
echo $SET_TEST_SHELL_RCFILE \n $SET_TEST_SHELL_PROFILE
echo $SET_TEST_SHELL_RCFILE; echo \n; echo $SET_TEST_SHELL_PROFILE
echo $SET_TEST_SHELL_RCFILE
echo $SET_TEST_SHELL_PROFILE
su
sudo su
exit
echo $SET_TEST_SHELL_PROFILE
echo $SET_TEST_SHELL_RCFILE
echo $SET_TEST_SHELL_RCFILE_LOCAL
h
history
119
sudo gedit profile bash.bashrc
cd /etc
sudo gedit profile bash.bashrc
sudo apt update && sudo apt upgrade -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
node --version
echo $PATH
which node
where node
type node
which = node
which -a node
node --help
echo $NODE_PATH 
which node
which nodejs
nodejs -V
node -v
npm version
npx -v
man node
node -v
history
nano nodesource_setup.sh
apt list --installed
man apt update
apt list --installed
sudo apt install build-essential
ruby -v
sass -v
ls -alH /bin
whereis node
whatis node
who node
where node
which node
ls -alH /bin/node
type /bin/node
whereis /bin/node
man node
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn
yarn --version
npm config --list
npm config list
npm config ls -l
git config list
git config
git config --list
git config --get-all
sudo apt install zsh
whereis zsh
which zsh
zsh --version
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
echo $SHELL
exit
sudo systemctl disable bluetooth.service
man poweroff
poweroff --reboot now
sudo poweroff --reboot now
echo $SHELL
zsh --version
cat /etc/shells
which zsh
sudo chsh -s $(which zsh)
exit
echo $SHELL
chsh -s $(which zsh)
exit
echo $SHELL
sudo usermod -s /usr/bin/zsh $(whoami)
echo $SHELL
apt list --installed | grep zsh
