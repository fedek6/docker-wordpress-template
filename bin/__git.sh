#!/bin/bash
echo -e "${green}🍿 Running git to fetch updates${clear}"
git fetch
if [ $GIT_FORCE = "true" ]; then
  git reset --hard origin/"${BRANCH}"
fi
git pull

if [ -f "${rootdir}"/.gitmodules."${BRANCH}" ]; then
  git submodule update --init --remote
fi
