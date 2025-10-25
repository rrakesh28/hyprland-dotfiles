return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- fallback if pywal fails
      transparent_background = true, -- <--- Make background transparent
      integrations = {
        cmp = true,
        gitsigns = true,
        telescope = true,
        treesitter = true,
        nvimtree = true,
      },
    }

    -- Optional: for floating windows transparency
    vim.cmd [[
        hi Normal guibg=NONE ctermbg=NONE
        hi NormalFloat guibg=NONE ctermbg=NONE
        hi FloatBorder guibg=NONE ctermbg=NONE
    ]]

    
  end,
}
