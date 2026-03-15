-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { height = 0.95, width = 0.95 },
        file_ignore_patterns = { ".git/", "node_modules/", "__pycache__/" },
      },
    },
    keys = {
      -- One group for quick folder access — all open file-browser instead of find_files
      { "<leader>fm", group = "my folders (browser)" },

      {
        "<leader>fmh",
        function()
          require("telescope").extensions.file_browser.file_browser({ path = "~", cwd = "~" })
        end,
        desc = "Home (Browser)",
      },

      {
        "<leader>fmp",
        function()
          require("telescope").extensions.file_browser.file_browser({ path = "~/projects", cwd = "~/projects" })
        end,
        desc = "Projects (Browser)",
      },

      -- Browser DIR
      {
        "<leader>fmg",
        function()
          require("telescope").extensions.file_browser.file_browser({ path = "~/games", cwd = "~/games" })
        end,
        desc = "Games (Browser)",
      },

      {
        "<leader>fmc",
        function()
          require("telescope").extensions.file_browser.file_browser({
            path = "~/.config/nvim",
            cwd = "~/.config/nvim",
            depth = 4,
            initial_mode = "insert",
          })
        end,
        desc = "Neovim Config (Browser)",
      },

      -- Current DIR
      {
        "<leader>fb",
        function()
          require("telescope").extensions.file_browser.file_browser({
            path = "%:p:h", -- dir of current file (very handy)
            cwd = vim.fn.getcwd(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = true,
            initial_mode = "normal",
          })
        end,
        desc = "File Browser (Current Dir)",
      },

      -- And the projects one you already like
      {
        "<leader>fpb",
        function()
          require("telescope").extensions.file_browser.file_browser({
            path = "~/projects",
            cwd = "~/projects",
            respect_gitignore = false,
            hidden = true,
          })
        end,
        desc = "Projects Browser",
      },
    },

    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
