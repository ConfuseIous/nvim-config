vim.opt.termguicolors = true

-- load lazy.nvim
require("lazy-bootstrap")
require("lazy").setup("plugins")

-- safe colorscheme loading
pcall(vim.cmd, "colorscheme catppuccin")

-- plugin configs
require("lualine").setup()
require("telescope").setup{}
require("neo-tree").setup()
require("nvim-treesitter.configs").setup {
  highlight = { enable = true },
}

vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
