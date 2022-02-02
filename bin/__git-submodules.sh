#!/bin/bash
if [ ! -f "$rootdir"/.gitmodules ]; then
  echo -e "${green}🍿 Creating config for submodules${clear}"

  if [ -f "${rootdir}"/.gitmodules."${BRANCH}" ]; then
    cp "${rootdir}"/.gitmodules."${BRANCH}" "${rootdir}"/.gitmodules
    git submodule update --init --remote
  else
    echo -e "${green}😌 There are no submodules defined! ${clear}"
  fi
fi
