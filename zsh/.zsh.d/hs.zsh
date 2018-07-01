function hs-fzf() {
  http_status_code_searcher list | fzf --ansi --reverse --prompt='status code ' | tr -d ' \\*' | xargs -n 1 http_status_code_searcher
}

zle -N hs-fzf
bindkey '^H' hs-fzf
