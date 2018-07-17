#!/usr/bin/env bash

VIM_PLUGINS="https://github.com/NLKNguyen/papercolor-theme \
    https://github.com/nathanaelkane/vim-indent-guides \
    https://github.com/mhinz/vim-startify \
    https://github.com/cohama/agit.vim"

BASE_DIR=${HOME}/.vim_runtime/my_plugins

for PLUGIN in $VIM_PLUGINS; do
    dirname=${BASE_DIR}/$(basename "${PLUGIN}")
    if [ -d "${dirname}" ]; then
        ( cd "${dirname}" && git pull )
    else
        ( cd "${dirname}" && git clone "${PLUGIN}")
    fi
done

