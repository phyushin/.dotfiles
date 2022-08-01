-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'preservim/nerdtree'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'David-Kunz/jester'
  use 'ap/vim-css-color'
  use 'chiel92/vim-autoformat'
  use 'mattn/emmet-vim'
  use 'airblade/vim-gitgutter'
  use 'janko-m/vim-test'
  use 'eslint/eslint'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'tpope/vim-rhubarb'
  use 'xolox/vim-misc'
  use 'vim-scripts/c.vim'
  use 'ludwig/split-manpage.vim'
  use 'fatih/vim-go'
  use 'jelera/vim-javascript-syntax'
  use 'hail2u/vim-css3-syntax'
  use 'gko/vim-coloresque'
  use 'tpope/vim-haml'
  use 'xolox/vim-lua-ftplugin'
  use 'phpactor/phpactor' 
  use 'stephpy/vim-php-cs-fixer'
  use 'davidhalter/jedi-vim'
  use 'raimon49/requirements.txt.vim'
  use 'tpope/vim-rails'
  use 'tpope/vim-rake'
  use 'tpope/vim-projectionist'
  use 'thoughtbot/vim-rspec'
  use 'ecomba/vim-ruby-refactoring' 
  use 'hrsh7th/nvim-compe' 

end)

