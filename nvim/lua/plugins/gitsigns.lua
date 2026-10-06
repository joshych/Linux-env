return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame = false,
        current_line_blame_opts = {
          virt_text_pos = "eol",
          delay = 1000,
        },
      })
    end,
  },
}
