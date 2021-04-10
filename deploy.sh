function link() {
    ln -sf $1 $2

    if [ $? -eq 0 ]; then
        printf "Symlinked $1 to $2\n"
    else
        printf "ERROR: failed to symlink $1 to $2\n"
    fi
}

printf "Cloning Vim Vundle Plugin\n"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ ! -d "~/.vim/colors/" ]; then
    printf "Creating directory ~/.vim/colors\n"
    mkdir -p ~/.vim/colors/;
fi

printf "Copying monochromicon.vim to ~/.vim/colors\n"
cp monochromicon.vim ~/.vim/colors/

link ~/git/dotfiles/vimrc ~/.vimrc
link ~/git/dotfiles/tmux.conf ~/.tmux.conf
link ~/git/dotfiles/bash_profile ~/.bash_profile
link ~/git/dotfiles/bashrc ~/.bashrc
