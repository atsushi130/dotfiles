function ghq-fzf() {
  local selected_dir=$(ghq list | fzf-tmux --query="$LBUFFER")

  if [ -n "$selected_dir" ]; then
    BUFFER="cd $(ghq root)/${selected_dir}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey '^G' ghq-fzf
