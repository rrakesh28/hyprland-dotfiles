return {
  "stevearc/oil.nvim",
  opts = {
    -- Optional configuration
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    view_options = {
      show_hidden = true,
      is_hidden_file = function(name, bufnr)
        return vim.startswith(name, ".")
      end,
    },
    keymaps = {
      ["<CR>"] = "actions.select",
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["-"] = "actions.parent",
      ["q"] = "actions.close",
    },
  },
  config = function(_, opts)
    vim.keymap.set("n", "<leader>o", require("oil").open, { desc = "Ope1n Oil file explorer" })
    vim.keymap.set("n", "<leader>O", function()
  require("oil").open(vim.fn.expand("%:p:h"))
end, { desc = "Open Oil in current file's directory" })
    require("oil").setup(opts)
  end,
}
