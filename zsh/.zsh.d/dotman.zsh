function dotman-fzf() {
  dotman list | fzf --ansi --reverse --prompt='dotman install --chain ' | tr -d ' \\*' | xargs -n 1 dotman install --chain
}

zle -N dotman-fzf
bindkey '^T' dotman-fzf
