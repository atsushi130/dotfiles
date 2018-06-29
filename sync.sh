#!/bin/bash

: "Update configuration files" && {
    cp -f ~/.vimrc                   ./vim/.vimrc
    cp -f ~/.xvimrc                  ./vim/.xvimrc
    cp -f ~/.ideavimrc               ./vim/.ideavimrc
    cp -f ~/.brewfile/Brewfile       ./.brewfile/Brewfile
    cp -f ~/.vim.d/setting.vim       ./vim/.vim.d/setting.vim
    cp -f ~/.vim.d/mapping.vim       ./vim/.vim.d/mapping.vim
    cp -f ~/.vim.d/color.vim         ./vim/.vim.d/color.vim
    cp -f ~/.vim/dein/dein.toml      ./vim/dein/dein.toml
    cp -f ~/.vim/dein/dein_lazy.toml ./vim/dein/dein_lazy.toml
    cp -f ~/.zshrc                   ./zsh/.zshrc
    cp -f ~/.zsh.d/fzf.zsh           ./zsh/.zsh.d/fzf.zsh
    cp -f ~/.zsh.d/ghq.zsh           ./zsh/.zsh.d/ghq.zsh
    cp -f ~/.zsh.d/config.zsh        ./zsh/.zsh.d/config.zsh
    cp -f ~/.zsh.d/zplug.zsh         ./zsh/.zsh.d/zplug.zsh
    cp -f ~/.zsh.d/dotman.zsh         ./zsh/.zsh.d/dotman.zsh
    cp -f ~/.sshrc                   ./.sshrc
    cp -f ~/.tmux.conf               ./tmux/.tmux.conf
    cp -f ~/.aliasrc                 ./.aliasrc
    cp -f ~/.gitignore               ./.gitignore
    cp -f ~/.gitconfig               ./.gitconfig
    cp -f ~/.editorConfig            ./.editorConfig
    cp -f ~/.config/pet/config.toml  ./pet/config.toml
    cp -f ~/.config/pet/snippet.toml ./pet/snippet.toml
}

: "Setup iTerm2" && {
    cp -f ~/.iterm/com.googlecode.iterm2.plist ./iterm/com.googlecode.iterm2.plist
}

: "Setup Alfred" && {
    cp -rf ~/.alfred/Alfred.alfredpreferences ./alfred/
}
