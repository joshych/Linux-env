return {
  -- Comment.nvim
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup({
        opleader = {
          line = "fl",
          block = "fb",
        },
      })
    end,
  },


  -- Auto pairs
  {
    "cohama/lexima.vim",
  },

  -- CtrlSF (search)
  {
    "dyng/ctrlsf.vim",
    config = function()
      vim.g.ctrlsf_auto_focus = { at = "start" }
      vim.g.ctrlsf_auto_preview = 1
      vim.g.ctrlsf_fold_result = 1
      vim.g.ctrlsf_populate_qflist = 1
      vim.g.ctrlsf_default_view_mode = "compact"
      vim.g.ctrlsf_mapping = {
        open = { "<CR>", "o" },
        openb = "O",
        split = "<C-O>",
        vsplit = "",
        tab = "t",
        tabb = "T",
        popen = "p",
        popenf = "P",
        quit = "q",
        next = "n",
        prev = "N",
        nfile = "}",
        pfile = "{",
        pquit = "q",
        loclist = "",
        chgmode = "M",
        stop = "<C-C>",
      }
    end,
  },

  -- Directory diff
  {
    "will133/vim-dirdiff",
    cmd = { "DirDiff" },
    config = function()
      vim.g.DirDiffAddArgs = "--strip-trailing-cr"
    end,
  },

  -- Gutentags (ctags)
  {
    "ludovicchabant/vim-gutentags",
    config = function()
      vim.g.gutentags_enabled = 1
      vim.g.gutentags_generate_on_write = 1
      vim.g.gutentags_generate_on_missing = 1
      vim.g.gutentags_generate_on_empty_buffer = 1
      vim.g.gutentags_project_root = { ".git" }
      vim.g.gutentags_filetypes = { "c", "cpp", "h", "S" }
      vim.g.gutentags_exclude_file_patterns = { ".*%.log$", ".*%.md$", ".*%.json$", ".*%.py$", ".*%.sh$" }
      vim.g.gutentags_exclude_dirs = { ".git", "node_modules", "build", "Build", "bin", "obj", ".vscode" }
      vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/tags")
      vim.g.gutentags_ctags_extra_args = {
        "--fields=+ailmnzS",
        "--extras=+q",
        "--languages=C",
        "--output-format=e-ctags",
      }
    end,
  },

}
