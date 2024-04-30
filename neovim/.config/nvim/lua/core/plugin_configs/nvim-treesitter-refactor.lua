require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },

    highlight_current_scope = { enable = true },

    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "<F2>",
      },
    },

    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "<F12>",
        goto_next_usage = "gn",
        goto_previous_usage = "gv",
      },
    },
  },
}
