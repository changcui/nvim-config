return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
    opts = {
      search = {
        mode = function(str) return "\\<" .. str end,
      },
    },
  },
  {
    'echasnovski/mini.pairs',
    event = "InsertEnter",
    opts = {},
  },
  {
    'echasnovski/mini.ai',
    event = "VeryLazy",
    opts = {},
  },
}
