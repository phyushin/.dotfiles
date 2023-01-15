local nnoremap = require("phyu.keymap").nnoremap

vim.keymap.set("n","<leader>pv", "<cmd>Ex<CR>")
vim.keymap.set("n","<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")

vim.keymap.set("n","<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n","<leader>fg","<cmd>Telescope live_grep<CR>")
vim.keymap.set("n","<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n","<leader>fh" ,"<cmd>Telescope help_tags<CR>")
vim.keymap.set("n","<F3>", ":NERDTreeToggle<CR>")
vim.keymap.set("n","<leader>AA", ":TestSuite<CR>")

vim.keymap.set("n","<Leader>ga",":Gwrite<CR>")
vim.keymap.set("n","<Leader>gc",":Git commit --verbose<CR>")
vim.keymap.set("n","<Leader>gsh",":Git push<CR>")
vim.keymap.set("n","<Leader>gll",":Git pull<CR>")
vim.keymap.set("n","<Leader>gs",":Git<CR>")
vim.keymap.set("n","<Leader>gb",":Git blame<CR>")
vim.keymap.set("n","<Leader>gd",":Gvdiffsplit<CR>")
vim.keymap.set("n","<Leader>gr",":GRemove<CR>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n","J","mzJ`z")
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")
vim.keymap.set("n","n", "nzzzv")
vim.keymap.set("n","N", "Nzzzv")


vim.keymap.set("n","<leader>y", "\"+y")
vim.keymap.set("v","<leader>y", "\"+y")
vim.keymap.set("n","<leader>Y", "\"+Y")

vim.keymap.set("n","<leader>x","<cmd>!chmod +x %<CR>", {silent=true})

local result = vim.api.nvim_exec(
[[
"" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
]],
true)
