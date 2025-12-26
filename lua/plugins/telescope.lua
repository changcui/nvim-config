return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>ff",      "<cmd>Telescope find_files<cr>", desc = "Find Files (rg)" },
    { "<leader>fg",      "<cmd>Telescope live_grep<cr>",  desc = "Live Grep (rg)" },
    { "<leader><space>", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    telescope.setup {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--trim",
        },
        prompt_prefix = " 🔍 ",
        selection_caret = "  ",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.5 },
        },
        mappings = {
          i = {
            ["<Left>"] = actions.preview_scrolling_left,
            ["<Right>"] = actions.preview_scrolling_right,
            ["<Up>"] = actions.move_selection_previous,
            ["<Down>"] = actions.move_selection_next,
          },
          n = {
            ["<Left>"] = actions.preview_scrolling_left,
            ["<Right>"] = actions.preview_scrolling_right,
          },
        },
        preview = {
          check_mime_type = true,
        }
      },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
    }
  end
}
