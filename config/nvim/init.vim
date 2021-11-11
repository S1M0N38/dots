call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" vimtex
" let g:vimtex_view_method = 'skim'

" Colors
set termguicolors
set background=dark
colorscheme gruvbox

" Persistent undo
set undodir=~/.config/nvim/undodir
set undofile

" providers
let g:python3_host_prog="/usr/local/bin/python3"

" Lines numbering
set number relativenumber

" Tabs and spaces
set tabstop=4       " show existing tab with 4 spaces width
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " On pressing tab, insert 4 spaces

" windows movements
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" mouse
set mouse=a

" lsp
lua << EOF
require'lspconfig'.clangd.setup{}
--require'lspconfig'.texlab.setup{}
EOF

" snippet
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" autoformatter
" LaTex with latexindent
" C     with ...
let g:formatdef_latexindent = '"latexindent -"'
au BufWrite * :Autoformat

