#!/usr/local/bin/zsh

# npm
export PATH="/usr/local/share/npm/bin:$PATH"

# atom
export PATH=$PATH:/usr/local/bin/atom

JDK_16=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
JDK_17=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
JDK_18=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home

# ruby
export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:${PATH}
	eval "$(pyenv init -)"
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# swiftenv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

# nodebrew
export PATH=~/.nodebrew/current/bin:$PATH

# fastlane installed by homebrew cask
export PATH="$HOME/.fastlane/bin:$PATH"

# ignoregen
export PATH=~/.ignoregen/bin:$PATH

# gactions
export PATH=~/.gactions/bin:$PATH

#Homebrew
export HOMEBREW_GITHUB_API_TOKEN="set Github API token"

# gcloud
export PATH=~/.gcloud/bin:$PATH
