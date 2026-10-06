return {
  -- NERDTree (on-demand loading)
  {
    "scrooloose/nerdtree",
    cmd = { "NERDTree", "NERDTreeToggle" },
  },

  -- Floating terminal
  {
    "voldikss/vim-floaterm",
    cmd = { "FloatermNew", "FloatermHide", "FloatermToggle" },
  },

  -- Vista (tag viewer)
  {
    "liuchengxu/vista.vim",
    cmd = { "Vista" },
  },

  -- Tokyo Night colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight")
      -- Highlight trailing whitespace
      vim.cmd("highlight RedundantSpaces ctermbg=red guibg=red")
      vim.cmd([[match RedundantSpaces /\s\+$/]])
      vim.cmd("hi Search guifg=black guibg=yellow")
    end,
  },

  -- fzf
  {
    "junegunn/fzf",
    build = "./install --bin",
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
    config = function()
      vim.g.fzf_layout = { window = { width = 0.9, height = 0.9, border = "sharp" } }
      vim.g.fzf_preview_window = {}
    end,
  },
}
