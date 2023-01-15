function ColourMyVim(colour)
    colour = colour or "monokai"
    vim.cmd.colorscheme(colour)
end

ColourMyVim()
