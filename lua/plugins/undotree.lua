return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggles the undotree window" })
  end
}
