local map = vim.keymap.set

-- F-key mappings
map("n", "<F1>", "<cmd>set list<CR>", { silent = true })
map("n", "<F2>", "<cmd>set nolist<CR>", { silent = true })
map("n", "<F3>", "<cmd>noh<CR>", { silent = true })
map("n", "<F4>", "<cmd>CtrlSFToggle<CR>", { silent = true })
map("n", "<F5>", "<cmd>NERDTree<CR>", { silent = true })
map("n", "<F6>", "<cmd>NERDTreeToggle<CR>", { silent = true })
map("n", "<F7>", "<cmd>set number<CR>", { silent = true })
map("n", "<F8>", "<cmd>set nonumber<CR>", { silent = true })
map("n", "<F9>", "<cmd>FloatermNew --height=0.9 --width=0.9<CR>", { silent = true })
map("n", "<F10>", "<cmd>FloatermHide<CR>", { silent = true })
map("n", "<F11>", "<cmd>Vista!!<CR>", { silent = true })

-- CtrlSF prompt
--map("n", "<Tab>", ':CtrlSF ""<Left>', {})
map("n", "`", ':CtrlSF ""<Left>', {})

-- Function previous/next
map("n", "]f", "/^{<CR>", { silent = true })
map("n", "[f", "?^{<CR>", { silent = true })

-- Telescope / fzf
map("n", "ff", ": Files<cr>", {})
map("n", "fe", "<cmd>Telescope live_grep<cr>", {})
map("n", "fs", "<cmd>Telescope git_status<cr>", {})
map("n", "S", "<cmd>Telescope buffers<cr>", {})
map("n", "fw", ": CtrlSF <C-R><C-W><CR><cr>", {})
map("n", "cd", ": ts <C-R><C-W><CR>", {})
map("n", "fd", ': CtrlSF -G "*.h" -R (^\\|}\\s*\\|^#define\\s+)<C-R><C-W><CR><cr>', {})
map("n", "fc", ': CtrlSF -G "*.c" -R ^<C-R><C-W><CR><cr>', {})
map("n", "fh", "<cmd>Telescope help_tags<cr>", {})

-- Close all other split panels
map("n", "D", "<cmd>only<cr>", {})

-- Gitsigns
map("n", "[[", "<cmd>Gitsigns prev_hunk<cr>", {})
map("n", "]]", "<cmd>Gitsigns next_hunk<cr>", {})
map("n", "]b", "<cmd>Gitsigns blame_line<cr>", {})
map("n", "]h", "<cmd>Gitsigns preview_hunk<cr>", {})
map("n", "]r", "<cmd>Gitsigns reset_hunk<cr>", {})

-- Paste with auto indent
map("n", "p", "p`[v`]=0", {})
