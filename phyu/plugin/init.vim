call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'David-Kunz/jester'
Plug 'ap/vim-css-color'
Plug 'chiel92/vim-autoformat'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'janko-m/vim-test'
Plug 'eslint/eslint'
Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-eslint'
Plug 'tanvirtin/monokai.nvim'
call plug#end()

source $HOME/.config/nvim/sets.vim
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <leader>AA :TestSuite<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup PHY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
