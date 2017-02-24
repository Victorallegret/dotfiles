#!/usr/bin/env bash

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install coreutils

brew install ansible
brew install composer
brew install git
brew install htop
brew install mas
brew install mysql
brew install node
brew install php70
brew install rbenv
brew install screenfetch
brew install tig
brew install tree
brew install youtube-dl
brew install zsh

# Get Cask
brew tap caskroom/cask

brew cask install appcleaner
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install keepassx
brew cask install logitech-options
brew cask install mamp
brew cask install plex-media-player
brew cask install sequel-pro
brew cask install spotify
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Quick Look plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv

# Remove outdated versions from the cellar.
brew cleanup