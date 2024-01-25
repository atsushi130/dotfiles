# xcode license agree
sudo xcodebuild -license

# install xcode command line tool
xcode-select --install

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap Homebrew/bundle
brew install mas

# install from Brewfile
brew bundle
