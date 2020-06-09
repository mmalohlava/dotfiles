set runtimepath+=~/.vim_runtime
set rtp+=/usr/local/opt/fzf

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

let $MYCONFFILE=expand("~/.my_configs.vim")
if filereadable($MYCONFFILE)
    source $MYCONFFILE
endif

" local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
