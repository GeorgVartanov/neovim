require("nvim-tree").setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  update_cwd = true,   
  update_focused_file = {
      enable = true,
      update_cwd = false,
  },
  view = {
    adaptive_size = true, 
    hide_root_folder = false,
    side = "left",  
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = { 
    group_empty = true,
    icons = { 
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },
    },
  }, 
  filters = {
      dotfiles = true,
      custom = { ".git", "node_modules", ".cache"},
  },
})

