return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "bash", "dockerfile", "javascript", "tsx", "go", "sql", "yaml", "html", "css", "lua","gomod","gosum","rasi","toml"
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}