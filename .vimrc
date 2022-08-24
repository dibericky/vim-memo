syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1

highlight Pmenu ctermbg=238 gui=bold

execute pathogen#infect()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" vim-plug
call plug#begin()
Plug 'elmcast/elm-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()

" code completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


let g:elm_syntastic_show_warnings = 1
