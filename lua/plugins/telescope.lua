local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
          ["<C-h>"] = fb_actions.goto_home_dir,
          ["<C-c>"] = fb_actions.create, 
          ["<C-d>"] = fb_actions.remove,
          ["<C-r>"] = fb_actions.rename,
          ["<C-p>"] = fb_actions.goto_parent_dir,
          ["<C-c>."] = fb_actions.copy,
          ["<C-o>."] = fb_actions.open,

        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
require("telescope").load_extension "file_browser"

