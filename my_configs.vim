color delek
set number
set clipboard=unnamed
let g:NERDTreeWinPos = "left"

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

set t_Co=256
colorscheme PaperColor
set background=dark

" Git plugin
set diffopt+=vertical

" 
" i18n helpers
"
"
" invoke as: 
"  :let g:i18n_result=[]|1,$s/'[^']*'/\=I18n(submatch(0), g:i18n_result)/gc|echom g:i18n_result
" insert into edit window:
"  :put =g:i18n_result
"
function! I18n(text, rlist)
    " Substitute ' to "
    let qtext = substitute(a:text, "'", '"', 'g')
    " Add result into translation list passed as a reference
    call add(a:rlist, qtext)
    let l:r = "i18next.t(" . a:text . ")"
    echom l:r
    return l:r
endfunction

"
" Setup ReST tables
"
" Use: ,tm to enable table mode: https://github.com/dhruvasagar/vim-table-mode
let g:table_mode_header_fillchar='='
let g:table_mode_corner_corner='+'

" Remove startup deprecation warning.
" See :h SnipMate-deprecate
let g:snipMate = { 'snippet_version' : 1 }
