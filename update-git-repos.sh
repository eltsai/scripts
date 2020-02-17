#!/bin/bash

skip=(ai2019 cooldown nda-plus-plus nCovMemory CPU-vulnerability-notes blog-source)
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
    cd ${HOME}/Projects/${git_repo}
    echo -e "${DGRAY}fetching updates from${GREEN}" ${git_repo} "${NC}"
    git pull --rebase
    echo ""
    cd .. 
done
cd ${dir}