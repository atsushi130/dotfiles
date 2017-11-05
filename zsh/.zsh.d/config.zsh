#!/usr/local/bin/zsh

# ディレクトリ名だけで cd
setopt auto_cd

# ワイルドカードのパターンマッチエラー対策
setopt nonomatch

# aaa/bbb/ccc への cd をa/b/c[tab] で補完
autoload -U compinit && compinit

# ssh の hostname を補完
autoload -U compinit && compinit
function print_known_hosts() {
    if [ -f $HOME/.ssh/known_hosts ]; then
		cat $HOME/.ssh/known_hosts | tr ',' ' ' | cut -d' ' -f1
	fi
}
_cache_hosts=($( print_known_hosts ))

# supplement directory stack
DIRSTACKSIZE=100
setopt AUTO_PUSHD
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:descriptions' format '%BCompleting%b %U%d%u'

# move supplement cursor
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1
autoload colors
colors
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=01:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# color up supplement
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

#_complete	 : 普通の補完
#_expand	 : グロブや変数の補完を行う。もともとあった展開とくらべて細かい制御が可能
#_match		 : *などのグロブによってコマンドを補完できる(vi* と入力するとviやvimが補完される)
#_prefix	 : カーソルの位置で補完を行う
#_approximate: ミススペルを修正した上で補完を行う
#_history	 : 履歴から補完を行う。_history_complete_wordから使われる
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list #_history

export TERM=xterm-256color

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# vim で <C-s> と <C-q> を利用可能にする
stty -ixon -ixoff
