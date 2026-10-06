return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          results_title = false,
          layout_config = {
            width = { 0.5, min = 123 },
            horizontal = {
              preview_cutoff = 0,
            },
          },
          find_command = { "fd", "-t=f", "-a" },
          path_display = { "absolute" },
          wrap_results = true,
        },
        extensions = {
          fzf_writer = {
            minimum_grep_characters = 3,
            minimum_files_characters = 3,
            use_highlighter = true,
          },
        },
      })
    end,
  },
}
