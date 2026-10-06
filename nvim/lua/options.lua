-- General options
vim.opt.autoindent = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.showmatch = true
vim.opt.guifont = "Courier 12"
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.ruler = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.readonly = false
vim.opt.mouse = ""
vim.opt.fixendofline = false
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.modifiable = true
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.clipboard = "unnamedplus"

-- fzf default command (rg)
vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --no-ignore-vcs --glob "!node_modules" --glob "!.git" --glob "!Build"'
