:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'http://github.com/tpope/vim-surround' 
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'https://github.com/ryanoasis/vim-devicons' 
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

" Enable Treesitter
let g:deoplete#enable_at_startup = 1

" Setup Treesitter for C and C++
lua << EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'vim', 'cpp', 'c', 'python', 'lua', 'vimdoc', 'javascript' },
    highlight = {
      enable = true,
    }
  }
EOF

