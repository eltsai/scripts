#ssh
alias ssh-chubby="ssh -A wentaoc@chubby.eecs.umich.edu"
alias ssh-tubby="ssh -A wentaoc@tubby.eecs.umich.edu"
alias ssh-vultr="ssh -A root@140.82.18.9"
alias ssh-tencent="ssh -A ubuntu@118.24.75.137"
alias ssh-bastion="ssh -A wentaoc@bastion.eecs.umich.edu"

alias tencent-server='ubuntu@118.24.75.137'
# build
alias make="make -j$(nproc)"
alias scons="scons -j$(nproc)"

# git
alias glog="git log --pretty=oneline --abbrev-commit"
alias gpr="git pull --rebase"
alias gcl="git clone"
alias gcb="git clone --single-branch --branch"
alias gps="git push"
alias ga="git add -A"
alias gcm="git commit -m"
alias gac="git add . && git commit -a -m"
alias ggrep="git grep"

# simplifying
alias open="nautilus"
alias untar="tar -zxvf"
alias c="clear"
alias hg="history | grep"
alias mvv="mv -v"
alias rmv="rm -vi"
alias cpv="cp -v"
alias lsl="ls -tharl"
pkgg() { dpkg -l | grep "$1" | awk '{print $2}'; }



alias hi="printf \"Hi Elisa!\nToday is $(date)\nGet your work down!\n\" | lolcat"
