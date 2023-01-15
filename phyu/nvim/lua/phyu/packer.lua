-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
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
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    -- colours 

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    
    use({
        'tanvirtin/monokai.nvim',
        as = 'monokai',
        config = function()
            vim.cmd('colorscheme monokai')
        end
    })
    use({
        'sainnhe/sonokai',
        as = 'sonokai',
        config = function()
            vim.cmd('colorscheme sonokai')
        end
    })
    -- end colours

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }
end)

