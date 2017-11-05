# .aliasrc の読み込み
. ~/.aliasrc

# prezto 設定
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# fzf
[ -f ~/.zsh.d/fzf.zsh ] && source ~/.zsh.d/fzf.zsh

# path
[ -f ~/.zsh.d/path.zsh ] && source ~/.zsh.d/path.zsh


# zsh の設定
[ -f ~/.zsh.d/config.zsh ] && source ~/.zsh.d/config.zsh

# zplug のプラグイン
[ -f ~/.zsh.d/zplug.zsh ] && source ~/.zsh.d/zplug.zsh
[[ -s /Users/atmiyake/.rsvm/rsvm.sh ]] && . /Users/atmiyake/.rsvm/rsvm.sh # This loads RSVM

# added by travis gem
[ -f /Users/atmiyake/.travis/travis.sh ] && source /Users/atmiyake/.travis/travis.sh
