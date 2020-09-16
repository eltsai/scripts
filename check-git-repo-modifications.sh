#!/bin/bash
#checking all git repo modifications under $HOME/Projects
#author: eltsai

skip=(cooldown nda-plus-plus nCovMemory CPU-vulnerability-notes blog-source USTC_CG2020 naive-inits)
dir=$(pwd)

DGRAY='\033[0;30m'
GREEN='\033[0;32m'
NC='\033[0m'

cd ${HOME}/Projects
for git_repo in $(ls)
do
    if [[ " ${skip[@]} " =~ " ${git_repo} " ]]; then
        continue
    fi
    cd ${git_repo}
    echo -e "${DGRAY}checking modifications for ${GREEN}" ${git_repo} "${NC}"
    git status
    echo ""
    cd .. 
done
cd ${dir}