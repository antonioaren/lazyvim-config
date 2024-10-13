return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = false
    vim.g.copilot_no_map = false

    vim.api.nvim_set_keymap("i", "<C-]>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })
    vim.api.nvim_set_keymap("i", "<C->>", "copilot#Complete()", { silent = true, expr = true, script = true })
    vim.api.nvim_set_keymap("i", "<C-[>", "copilot#Dismiss()", { silent = true, expr = true, script = true })
  end,
  lazy = false,
  enabled = true,
}
