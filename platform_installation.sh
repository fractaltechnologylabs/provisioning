# homebrew installation, the mac package manager
echo '########################################################'
echo '###              INSTALLING HOMEBREW                 ###'
echo '########################################################'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# terminal utilities
echo '########################################################'
echo '###              INSTALLING UTILITIES                ###'
echo '########################################################'
brew install ack
brew install tree
brew install caskroom/cask/brew-cask
brew cask install macvim

# ruby and rails installation
echo '########################################################'
echo '###           INSTALLING RUBY AND RAILS              ###'
echo '########################################################'
brew install rbenv
brew install ruby-build
sudo rbenv install 2.2.0
rbenv global 2.2.0
rbenv rehash
gem install rails --version=4.2

# python and django installation
echo '########################################################'
echo '###        INSTALLING PYTHON AND DJANGO              ###'
echo '########################################################'
brew install python3
pip3 install Django==1.7

# node installation
echo '########################################################'
echo '###           INSTALLING NODE AND NPM                ###'
echo '########################################################'
brew install node


# PostgreSQL Database installation
echo '########################################################'
echo '###            INSTALLING POSTGRESQL                 ###'
echo '########################################################'
brew install homebrew/versions/postgresql93
echo 'SETUP POSTGRESQL TO START AT LOGIN'
ln -sfv /usr/local/opt/postgresql93/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql93.plist
