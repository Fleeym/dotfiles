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
echo "2) zsh Install"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Oh My ZSH! installed"
echo "---------------------------"
echo "3) Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp .zshrc ~/.zshrc
p10k configure

echo "Powerlevel10k installed!"
