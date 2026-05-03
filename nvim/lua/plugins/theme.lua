-- ~/.config/nvim/lua/plugins/theme.lua
-- ~/.config/nvim/lua/plugins/theme.lua
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main", -- or "moon" for even calmer
        dark_variant = "moon",

        styles = {
          transparency = true, -- ← turn this back ON
          italic = true,
          bold = true,
        },

        -- Optional: Force line numbers more visible on transparent bg
        highlight_groups = {
          LineNr = { fg = "#908caa" }, -- muted but clearer gray
          CursorLineNr = { fg = "#ebbcba" }, -- warmer for current line
        },
      })

      vim.cmd("colorscheme rose-pine")
    end,
  },
}
