return {
  "vim-test/vim-test",
  cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
  dependencies = { "preservim/vimux" },
  keys = {
    { "n", "<leader>tt", ":TestNearest<CR>" },
    { "n", "<leader>tT", ":TestFile<CR>" },
    { "n", "<leader>ta", ":TestSuite<CR>" },
    { "n", "<leader>tl", ":TestLast<CR>" },
    { "n", "<leader>tg", ":TestVisit<CR>" },
  },
  setup = function()
    vim.g["test#strategy"] = "vimux"
  end,
}
