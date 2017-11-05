#git clone Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#backup zsh setting files
mkdir zshfiles_backup && mv zshmv .zlogin .zlogout .zprofile .zshenv .zshrc zsh_orig

#make setting files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

#git colne powerline fonts repository
git colne https://github.com/powerline/fonts.git

#remvoe powerlines fonts
rm -rf fonts

#git clone custom theme repositry
git clone https://github.com/atsushi130/custom_agnoster.git

#powerline fonts install
sh install.sh

#remove original theme
rm -f ~/.zprezto/modules/prompt/functions/prompt_agnoster_setup

#copy custom theme
mv ~/.vim/custom_agnoster/prompt_agnoster_setup ~/.zprezto/modules/prompt/functions/prompt_agnoster_setup

#guide other settings
echo "change Regular Font and Non-ASCII Font from current font to powerline fonts of iterm2>preferences>profile>text"
echo "change theme from sorin to agnoster : ~/.zpreztorc, 102 line";
echo "done!!"
