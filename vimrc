"" VIM settings Personal

syntax enable
set background=dark
:let mapleader = ","
set clipboard=unnamed



""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

"if filereadable(expand("~/.vimrc.before"))
  "source ~/.vimrc.before
"endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded


:set guifont=Menlo:h14

colorscheme jellybeans
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = ',fb'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_switch_buffer = 2
let g:ctrlp_mruf_last_entered = 1
set expandtab
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4

"Save on losing focus
"
au FocusLost * :wa
