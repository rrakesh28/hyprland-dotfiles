local wal_colors = vim.fn.json_decode(vim.fn.readfile(os.getenv("HOME") .. "/.cache/wal/colors.json"))
local palette = {
    base   = wal_colors.special.background,
    text   = wal_colors.special.foreground,
    accent = wal_colors.colors[1],
    pink   = wal_colors.colors[5],
    green  = wal_colors.colors[2],
    yellow = wal_colors.colors[3],
    blue   = wal_colors.colors[4],
}

vim.cmd.colorscheme("catppuccin")

-- Override some highlights using pywal palette
vim.api.nvim_set_hl(0, "Normal", { bg = palette.base, fg = palette.text })
vim.api.nvim_set_hl(0, "Comment", { fg = palette.blue, italic = true })
vim.api.nvim_set_hl(0, "String", { fg = palette.green })
vim.api.nvim_set_hl(0, "Keyword", { fg = palette.pink })
vim.api.nvim_set_hl(0, "Function", { fg = palette.accent })

