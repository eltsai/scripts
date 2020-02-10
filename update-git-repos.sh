#!/bin/bash

skip=(cooldown nda-plus-plus nCovMemory CPU-vulnerability-notes blog-source)
dir=$(pwd)

DGRAY='\033[0;30m'
NC='\033[0m'

cd ${HOME}/Projects
for git_repo in $(ls)
do
    if [[ " ${skip[@]} " =~ " ${git_repo} " ]]; then
        continue
    fi
    cd ${git_repo}
    echo -e "${DGRAY}fetching updates from${NC}" ${git_repo}
    git pull --rebase
    cd .. 
done
cd ${dir}