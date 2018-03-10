#!/bin/bash

isExistDictionarys() {

    # .iterm
    if [ -e ~/.iterm ]; then
    	echo "exist .iterm directory.";
    else
    	echo "mkdir .iterm...";
    	mkdir ~/.iterm
    fi

    # .alfred
    if [ -e ~/.alfred ]; then
    	echo "exist .alfred directory.";
    else
    	echo "mkdir .alfred...";
    	mkdir ~/.alfred
    fi

    # .vim
    if [ -e ~/.vim ]; then
    	echo "exist .vim directory.";
    else
    	echo "mkdir .vim...";
    	mkdir ~/.vim
    fi

    # .vim/dictionary
    if [ -e ~/.vim/dictionary ]; then
    	echo "exist dictionary directory.";
    else
    	echo "mkdir dictionary ...";
    	mkdir ~/.vim/dictionary
    fi

    # .vim/colors
    if [ -e ~/.vim/colors ]; then
    	echo "exist colors directory.";
    else
    	echo "mkdir colors ...";
    	mkdir ~/.vim/colors
    fi

    # .vim/dein
    if [ -e ~/.vim/dein ]; then
    	echo "exist dein directory.";
    else
    	echo "mkdir dein ...";
    	mkdir ~/.vim/dein
    fi

    # .config
    if [ -e ~/.config ]; then
    	echo "exist .config directory.";
    else
    	echo "mkdir .config ...";
    	mkdir ~/.config
    fi

    # .vim.d
    if [ -e ~/.vim.d ]; then
    	echo "exist .vim.d directory.";
    else
    	echo "mkdir .vim.d ...";
    	mkdir ~/.vim.d
    fi

    # .zsh.d
    if [ -e ~/.zsh.d ]; then
    	echo "exist .zsh.d directory.";
    else
    	echo "mkdir .zsh.d ...";
    	mkdir ~/.zsh.d
    fi

    # .sshrc.d
    if [ -e ~/.sshrc.d ]; then
    	echo "exist .sshrc.d directory.";
    else
    	echo "mkdir .sshrc.d ...";
    	mkdir ~/.sshrc.d
    fi

    # .realm
    if [ -e ~/.realm ]; then
        echo "exist .realm directory.";
    else
        echo "mkdir .realm ...";
        mkdir ~/.realm
    fi

    # .brewfile
    if [ -e ~/.brewfile ]; then
        echo "exist .brewfile directory.";
    else
        echo "mkdir .brewfile ...";
        mkdir ~/.brewfile
    fi
}

backupSettingFiles() {

    # vimrc
    cp -f  ~/.vimrc                   ~/.vimrc.backup
    cp -f  ~/.vim.d/setting.vim       ~/.vim.d/setting.vim.backup
    cp -f  ~/.vim.d/mapping.vim       ~/.vim.d/mapping.vim.backup
    cp -f  ~/.vim.d/color.vim         ~/.vim.d/color.vim.backup
    cp -f  ~/.ideavimrc               ~/.ideavimrc.backup
    cp -f  ~/.xvimrc                  ~/.xvimrc.backup
    cp -f  ~/.vimniumrc               ~/.vimniumrc.backup
    cp -f  ~/.vim/dein/dein.toml      ~/.vim/dein/dein.toml.backup
    cp -f  ~/.vim/dein/dein_lazy.toml ~/.vim/dein/dein_lazy.toml.backup

    # zsh
    cp -f  ~/.zshrc                   ~/.zshrc.backup
    cp -f  ~/.zsh.d/fzf.zsh           ~/.zsh.d/fzf.zsh.backup
    cp -f  ~/.zsh.d/config.zsh        ~/.zsh.d/config.zsh.backup
    cp -f  ~/.zsh.d/zplug.zsh         ~/.zsh.d/zplug.zsh.backup

    # sshrc
    cp -f  ~/.sshrc                   ~/.sshrc.backup

    # tmux
    cp -f  ~/.tmux.conf               ~/.tmux.conf.backup

    # git
    cp -f  ~/.gitconfig               ~/.gitconfig.backup
    cp -f  ~/.gitignore               ~/.gitignore.backup

    # editor config
    cp -f  ~/.editorConfig            ~/.editorConfig.backup

    # alias
    cp -f  ~/.aliasrc                 ~/.aliasrc.backup

    # brewfile
    cp -rf ~/.brewfile                ~/.brewfile.backup

    # pet
    cp -f  ~/.config/pet/config.toml  ~/.config/pet/config.toml.backup
    cp -f  ~/.config/pet/snippet.toml ~/.config/pet/snippet.toml.backup

    # Xcode keybinding
    cp -f ~/Library/Developer/Xcode/UserData/KeyBindings/Default.idekeybindings  ~/Library/Developer/Xcode/UserData/KeyBindings/Default.idekeybindings.backup

    # iterm
    cp -f  ~/.iterm/com.googlecode.iterm2.plist ~/.iterm/com.googlecode.iterm2.plist.backup

    # alfred
    cp -rf ~/.alfred/Alfred.alfredpreferences   ~/.alfred/Alfred.alfredpreferences.backup

    # jetbrains
    cp -f  ~/Library/Preferences/IntelliJIdea*/templates/java.xml     ~/Library/Preferences/IntelliJIdea*/templates/java.xml.backup
    cp -f  ~/Library/Preferences/IntelliJIdea*/colors/JavaDusk.icls   ~/Library/Preferences/IntelliJIdea*/colors/JavaDusk.icls.backup
    cp -f  ~/Library/Preferences/IntelliJIdea*/colors/ScalaDusk.icls  ~/Library/Preferences/IntelliJIdea*/colors/ScalaDusk.icls.backup
    cp -f  ~/Library/Preferences/IntelliJIdea*/colors/KotlinDusk.icls ~/Library/Preferences/IntelliJIdea*/colors/KotlinDusk.icls.backup
    cp -f  ~/Library/Preferences/IntelliJIdea*/colors/RustDusk.icls   ~/Library/Preferences/IntelliJIdea*/colors/RustDusk.icls.backup

}

copySettingFiles() {

    # vimrc
    cp -f  ./vim/.vimrc              ~/.vimrc
    cp -f  ./vim/.vim.d/setting.vim  ~/.vim.d/setting.vim
    cp -f  ./vim/.vim.d/mapping.vim  ~/.vim.d/mapping.vim
    cp -f  ./vim/.vim.d/color.vim    ~/.vim.d/color.vim
    cp -f  ./vim/.ideavimrc          ~/.ideavimrc
    cp -f  ./vim/.xvimrc             ~/.xvimrc
    cp -f  ./vim/.vimniumrc          ~/.vimniumrc
    cp -f  ./vim/dein/dein.toml      ~/.vim/dein/dein.toml
    cp -f  ./vim/dein/dein_lazy.toml ~/.vim/dein/dein_lazy.toml

    # sshrc
    cp -f  ./.sshrc                  ~/.sshrc
    cp -f  ./vim/.vimrc              ~/.sshrc.d/.vimrc
    cp -f  ./vim/setting.vim         ~/.sshrc.d/setting.vim
    cp -f  ./vim/mapping.vim         ~/.sshrc.d/mapping.vim
    cp -f  ./vim/color.vim           ~/.sshrc.d/color.vim

    # zshrc
    cp -f  ./zsh/.zshrc              ~/.zshrc
    cp -f  ./zsh/.zsh.d/fzf.zsh      ~/.zsh.d/fzf.zsh
    cp -f  ./zsh/.zsh.d/config.zsh   ~/.zsh.d/config.zsh
    cp -f  ./zsh/.zsh.d/zplug.zsh    ~/.zsh.d/zplug.zsh

    # tmux
    cp -f  ./tmux/.tmux.conf         ~/.tmux.conf

    # git
    cp -f  ./.gitconfig              ~/.gitconfig
    cp -f  ./.gitignore              ~/.gitignore

    # editor config
    cp -f  ./.editorConfig           ~/.editorConfig

    # alias
    cp -f  ./.aliasrc                ~/.aliasrc

    # Xcode keybinding
    cp -f ./xcode/Default.idekeybindings  ~/Library/Developer/Xcode/UserData/KeyBindings/Default.idekeybindings


    # iterm
    cp -f  ./iterm/com.googlecode.iterm2.plist ~/.iterm/com.googlecode.iterm2.plist

    # alfred
    cp -rf ./alfred/Alfred.alfredpreferences   ~/.alfred

    # jetbrains
    cp -f  ./jetbrains/snippets/java.xml       ~/Library/Preferences/IntelliJIdea*/templates/java.xml
    cp -f  ./jetbrains/colors/JavaDusk.icls    ~/Library/Preferences/IntelliJIdea*/colors/JavaDusk.icls
    cp -f  ./jetbrains/colors/ScalaDusk.icls   ~/Library/Preferences/IntelliJIdea*/colors/ScalaDusk.icls
    cp -f  ./jetbrains/colors/KotlinDusk.icls  ~/Library/Preferences/IntelliJIdea*/colors/KotlinDusk.icls
    cp -f  ./jetbrains/colors/RustDusk.icls    ~/Library/Preferences/IntelliJIdea*/colors/RustDusk.icls
}

cloneRepository() {

    # git clone dictionary repository
    git clone https://github.com/atsushi130/dictionary.git

    # git colne Xcodecolorschema repository
    git clone https://github.com/atsushi130/XcodeColorSchema.git
}

copyClonedFiles() {

    # copy dictionary files
    cp ./dictionary/PHP.dict ~/.vim/dictionary/PHP.dict
    cp ./dictionary/javascript.dict ~/.vim/dictionary/javascript.dict

    # copy xcode-dusk.vim
    cp ./XcodeColorSchema/xcode-dusk.vim ~/.vim/colors/xcode-dusk.vim
}

setupZplug() {

    # insatll zplug
    curl -sL https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

    # change default shell
    chsh -s $(grep /zsh$ /etc/shells | tail -1)

    # plugin install
    source ~/.zshrc
}

after() {

    # remove
    cd ..
    rm -rf ./dotfiles

    # restart shell proccess
    exec $SHELL -l
}


# execute tasks
isExistDictionarys
backupSettingFiles
copySettingFiles
cloneRepository
copyClonedFiles
setupZplug
after
