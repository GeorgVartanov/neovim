-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap  -- set global keymap
local cmd = vim.cmd -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local fn = vim.fn -- call Vim functions
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/windows-scoped options

-- Neovim UI
-----------------------------------------------------------
g.mapleader = " " -- change leader to a comma
opt.swapfile = false -- don't use swapfile


opt.number = true -- show line number
opt.relativenumber = true


-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- autoindent new lines


opt.termguicolors = true -- enable 24-bit RGB colors
cmd([[colorscheme onedark]])
