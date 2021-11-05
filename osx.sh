#!/usr/bin/env bash

EMAIL="aasuddjian@gmail.com"
TEMP_DIR="~/temp/suddjian-dotfiles"
ITERM_URL="https://iterm2.com/downloads/stable/latest"
VSCODE_URL="https://update.code.visualstudio.com/latest/darwin/stable"

echo "this script will set up the essentials."
echo "just follow the instructions and navigate through any installer screens that pop up."
echo "hopefully everything works.\n"

rm -rf $TEMP_DIR

echo "installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "installing command line developer tools (xcode, gcc, git, etc)..."
xcode-select --install

echo "configuring git..."
cp ./.gitconfig ~/.gitconfig

echo "creating ssh key..."
ssh-keygen -t rsa -b 4096 -C $EMAIL
echo "Add the following as an ssh key on Github:"
cat ~/.ssh/id_rsa.pub
echo "\n"

echo "installing iterm..."
curl $ITERM_URL -o $TEMP_DIR/iterm.zip
unzip $TEMP_DIR/iterm.zip $TEMP_DIR/iterm
open $TEMP_DIR/iterm

echo "installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing fira code..."
brew tap homebrew/cask-fonts
brew cask install font-fira-code

echo "installing vs code..."
curl -I $VSCODE_URL | grep -Fi Location

echo "installing command line tools"
brew install direnv
brew install thefuck

echo "installing python stuff"
brew install pyenv
brew install pyenv-virtualenv

rm -rf $TEMP_DIR
