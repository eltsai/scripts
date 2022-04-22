# ssh

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
alias gwhere="git rev-parse --abbrev-ref HEAD"
alias gcatchup="git fetch origin; git merge origin/master"

# simplifying
alias open="xdg-open"
alias untar="tar -zxvf"
alias c="clear"
alias hg="history | grep"
alias mvv="mv -v"
alias rmv="rm -vi"
alias cpv="cp -v"
alias lsl="ls -tharl"
alias sshot="gnome-screenshot -a -f"
pkgg() { dpkg -l | grep "$1" | awk '{print $2}'; }



