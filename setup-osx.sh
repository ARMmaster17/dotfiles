#!/bin/zsh
# Pull dotfiles repo
mkdir ~/Documents/GitHub
git clone https://github.com/ARMmaster17/dotfiles.git -C ~/Documents/GitHub/dotfiles
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Link dotfiles for ZSH
ln ~/Documents/GitHub/dotfiles/.zshrc ~/.zshrc
ln ~/Documents/GitHub/dotfiles/.zshenv ~/.zshenv
# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Install theme
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
# Install fonts
cd ~/Documents/GitHub
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# Install menu bar stats
brew install --cask stats
# ZSH syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc