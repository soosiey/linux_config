#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="/Users/suhaasyerapathi/repos/dotfiles"
echo "$DIR"
files=(bash_aliases, bash_profile, bashrc, gitconfig, mybashprofile, mybashrc, vimrc, myvimrc)

function install_files()
{
    for f in ${files[@]}
    do
        ln -s ${DIR}/${f} /Users/suhaasyerapathi/.${f}
    done

}

function remove_files()
{
    for f in ${files[@]}
    do
        rm -f ~/.${f}
    done

}
