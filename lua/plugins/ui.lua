-- lua/plugins/ui.lua
return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_better_performance = 1
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        separator_style = "thin",
        show_buffer_close_icons = false,
        always_show_bufferline = false,
      }
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = true, show_start = false },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', ']c', gs.next_hunk, { buffer = bufnr, desc = "Next Hunk" })
        vim.keymap.set('n', '[c', gs.prev_hunk, { buffer = bufnr, desc = "Prev Hunk" })
      end
    }
  },
  {
    "stevearc/aerial.nvim",
    keys = {
      { "<leader>at", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial" },
    },
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr })
      end,
    },
  }
}
