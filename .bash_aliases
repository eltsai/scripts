#ssh


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
pkgg() { dpkg -l | grep "$1" | awk '{print $2}'; }



alias hi="printf \"Hi Elisa!\nToday is $(date)\nGet your work down!\n\" | lolcat"
