
### youtube-dl with numbering files
youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s" <playlist_link>




rsync -rPz /my/local/dir/ workstation:/my/remote/dir
 
sudo nano /etc/ssh/ssh_config

sudo openvpn --config client.ovpn 

ssh tcaws_dev

/home/sushilshinde/.ssh/

curl -L -O xyzfile

tar -xvf xyz.tar.gz

git add -A && git commit -m "docker" && git push -u origin master

sudo systemctl restart network

### Search in a file
sudo grep -r "grub" /var/log/boot.log | less

sudo sed -n '/Mounted/p' /var/log/boot.log | less

grep -r "ERROR" ap-challenge-2018-05-10.log | tail -n 50




alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias dir='ls'

alias pt="~/projects/tc"
alias pl="~/projects/local"
alias c="clear"

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias g="git"
alias gi='git init'
alias gp='git push'
alias gpl='git pull'
alias ga='git add .'
alias gc='git commit -m'
alias ooanward='git commit -am'
alias ge='git checkout .'

alias v="vim"

alias a="atom ."
alias reload="source ~/.zshrc"
alias ze="vim ~/.zshrc"
alias al="cat $ZSH/custom/aliases.zsh"
alias ae="vim $ZSH/custom/aliases.zsh"
alias bi="brew install"
