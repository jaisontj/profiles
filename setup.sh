# ZSH
echo "Installing ohmyzsh"
./install-ohmyzsh.sh
echo "Setting gitprompt"
cp .git-prompt.sh ${HOME} 
echo "Setting up zshrc"
cp .zshrc ${HOME}
source ${HOME}/.zshrc

# VIM
echo "Setting up vim"
cp .vimrc ${HOME}
# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Run vundle install
vim +PluginInstall +qall

# Setup vim colors
VIM_COLORS=${HOME}/.vim/colors
mkdir -p ${VIM_COLORS}
cp simple-dark.vim ${VIM_COLORS}

# TMUX
echo "Install tmux based on your distro"
cp .tmux.conf ${HOME}
