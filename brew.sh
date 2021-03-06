#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed 
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget`.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim 
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install antigen
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install htop
brew install httpie --HEAD
brew install imagemagick --with-webp
brew install jq
brew install lua
brew install lynx
brew install mas-cli
brew install ncdu
brew install p7zip
brew install pigz
brew install pv
brew install rcm
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install terminal-notifier
brew install tree
brew install tmux
brew install vbindiff
brew insttall wget
brew install whalebrew
brew install zopfli
brew install zsh
# install ZSH
brew install zsh
# Install Development tools
brew install docker
brew install docker-composse
brew install python
brew install python3
brew install rbenv
brew install nvm
brew install git
# Install Apps from Cask
brew cask install 1password
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install spotify
brew cask install visual-studio-code
brew cask install wireshark
brew cask install slack
brew cask install zoom
# Remove outdated versions from the cellar.
brew cleanup
