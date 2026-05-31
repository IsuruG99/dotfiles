return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = { "lua", "vim", "vimdoc", "python", "bash", "c", "cpp" }, -- add your langs
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
