#!/usr/bin/env bash

VIM_PLUGINS="https://github.com/NLKNguyen/papercolor-theme \
    https://github.com/nathanaelkane/vim-indent-guides \
    https://github.com/mhinz/vim-startify \
    https://github.com/cohama/agit.vim \
    https://github.com/neoclide/coc.nvim.git@release \
    https://github.com/dhruvasagar/vim-table-mode.git \
    https://github.com/junegunn/fzf.vim"

BASE_DIR=${HOME}/.vim_runtime/my_plugins
[ -d "${BASE_DIR}" ] || mkdir -p "${BASE_DIR}"

for PLUGIN in $VIM_PLUGINS; do
    plugin=$PLUGIN
    branch=master
    if [[ $PLUGIN == *"@"* ]]; then
        plugin=$(echo "$PLUGIN" | cut -d@ -f1)
        branch=$(echo "$PLUGIN" | cut -d@ -f2)
    fi
    dirname=${BASE_DIR}/$(basename "${plugin}")
    if [ -d "${dirname}" ]; then
        echo "* Pull ${plugin}"
        ( cd "${dirname}" && git pull )
    else
        echo "* Clone ${plugin} (branch: ${branch})"
        ( cd "${BASE_DIR}" && git clone --branch "${branch}" "${plugin}")
    fi
done

