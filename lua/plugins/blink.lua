return {
  {
    "saghen/blink.cmp", --Saghen/blink.nvim",
    opts = {
      keymap = {
        preset = "default",
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = { "accept", "fallback" },
      },
    },
  },
  {
    "saghen/blink.compat",
    lazy = true,
    opts = {},
    config = function()
      -- monkeypatch cmp.ConfirmBehavior for Avante
      require("cmp").ConfirmBehavior = {
        Insert = "insert",
        Replace = "replace",
      }
    end,
  },
  {
    "saghen/blink.cmp",
    lazy = true,
    opts = {
      sources = {
        compat = { "avante_commands", "avante_mentions", "avante_files" },
      },
    },
  },
}
