return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      vim.keymap.set('n', '<C-n>', ":NvimTreeToggle<CR>", { desc = 'Find File in NvimTree', noremap = true, silent = true })
      vim.keymap.set('n', '<C-m>', ":NvimTreeFindFile<CR>", { desc = 'Find File in NvimTree', noremap = true, silent = true })
      require("nvim-tree").setup({
        renderer = {
          root_folder_label = false
        }
      })
    end,
}
