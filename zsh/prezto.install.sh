# git clone Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# make setting files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# git colne powerline fonts repository
git clone https://github.com/powerline/fonts.git

# powerline fonts install
sh fonts/install.sh

# git clone custom theme repositry
git clone https://github.com/atsushi130/custom_agnoster.git

# intall custom agnoster
cp -rf custom_agnoster/prompt_agnoster_setup ~/.zprezto/modules/prompt/functions/prompt_agnoster_setup

# guide other settings
echo "change Regular Font and Non-ASCII Font from current font to powerline fonts of iterm2 > preferences > profile > text"
echo "change theme from "sorin" to "agnoster" : ~/.zpreztorc, 133 line";
echo "done !!"
