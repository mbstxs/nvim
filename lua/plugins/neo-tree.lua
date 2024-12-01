return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 25,
      },
      filesystem = {
        close_if_last_window = true,
      },
    })
    vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { noremap = true, silent = true })
  end,
}
