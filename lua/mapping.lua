local map = vim.api.nvim_set_keymap  -- set global keymap
local opts = { noremap=true, silent=true }


map("i", "jj", "<Esc>", opts)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
map("n", "<leader>tff", ":Telescope find_files<CR>", opts)
map("n", "<leader>tlg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>tb", ":Telescope buffers<CR>", opts)
map("n", "<leader>t", ":Telescope <CR>", opts)
map("n", "<D-b>", ":wd<CR>", opts)

map("n", "<leader>tfb", ":Telescope file_browser<CR>", opts)


map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)
