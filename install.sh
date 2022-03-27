#!/bin/bash

echo "WELCOME TO FLAME'S DOTFILES!"
echo "---------------------------"
echo "1) Git Config"

cp .gitconfig ~/.gitconfig

echo "Enter your first and last name: "
read full_name

echo "Type in your email adress: "
read email

git config --global user.email "$email"
git config --global user.name "$full_name"

echo "Git config done!"
echo "---------------------------"
