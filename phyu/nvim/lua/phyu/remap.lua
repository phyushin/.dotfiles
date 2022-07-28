local nnoremap = require("phyu.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg","<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh" ,"<cmd>Telescope help_tags<CR>")
nnoremap("<F3>", ":NERDTreeToggle<CR>")
nnoremap("<leader>AA", ":TestSuite<CR>")

nnoremap("<Leader>ga",":Gwrite<CR>")
nnoremap("<Leader>gc",":Git commit --verbose<CR>")
nnoremap("<Leader>gsh",":Git push<CR>")
nnoremap("<Leader>gll",":Git pull<CR>")
nnoremap("<Leader>gs",":Git<CR>")
nnoremap("<Leader>gb",":Git blame<CR>")
nnoremap("<Leader>gd",":Gvdiffsplit<CR>")
nnoremap("<Leader>gr",":GRemove<CR>")


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
