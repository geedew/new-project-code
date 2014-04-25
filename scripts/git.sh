#!/bin/bash


read -p "Do you want to setup a git repo? [Y/n]: " a
if [ ! $a ] || [ ! $a == "n" ]; then
  git init
  echo "My newest repo" >> README
  curl https://raw.githubusercontent.com/github/gitignore/master/Global/OSX.gitignore >> .gitignore
  curl https://raw.githubusercontent.com/github/gitignore/master/Global/vim.gitignore >> .gitignore
  git commit -am"Initial Commit"
fi
