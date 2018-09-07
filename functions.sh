#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(tmux.conf gitconfig vimrc)

function install_files()
{
    for f in ${files[@]}
    do
        ln -sf ${DIR}/${f} ~/.${f}
    done

}

function remove_files()
{
    for f in ${files[@]}
    do
        rm -f ~/.${f}
    done

}


