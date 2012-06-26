#!/bin/bash

files=( gitconfig rvmrc gemrc bash_aliases bash_profile bashrc bash_login bash_colors vimrc )

for element in $(seq 0 $((${#files[@]} - 1))); do
  file="${files[$element]}"
  dotfile=".${file}"
  pwd=`pwd`

  if [[ -e ~/"${dotfile}" ]]; then
    mv ~/"${dotfile}" ~/"${dotfile}".old
  fi
  ln -s "${pwd}/${file}" ~/"${dotfile}"
done