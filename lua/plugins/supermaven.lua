return {
  {
    "supermaven-inc/supermaven-nvim",
    enabled = false,
    event = "InsertEnter",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>", -- Accepter suggestion
          clear_suggestion = "<C-]>", -- Effacer suggestion
          accept_word = "<C-j>", -- Accepter mot par mot
        },
        ignore_filetypes = { "TelescopePrompt" },
        color = {
          suggestion_color = "#d79921", -- Gruvbox yellow
          cterm = 214,
        },
        log_level = "off",
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}
