source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup PHY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
