# Copy 
cp .zshrc ${HOME}
cp .vimrc ${HOME}
cp .git-prompt.sh ${HOME} 

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup vim colors
VIM_COLORS=${HOME}/.vim/colors
mkdir -p ${VIM_COLORS}
cp simple-dark.vim ${VIM_COLORS}

# Install ohmyzsh
./install-ohmyzsh.sh

# Source
source ${HOME}/.zshrc

