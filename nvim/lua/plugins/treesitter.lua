return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter_config = require("nvim-treesitter.configs")
    local languages = {
      "c", "lua", "vim", "vimdoc", "query", "javascript", "html",
      "go", "dockerfile", "json", "typescript", "kotlin", "python",
      "rust", "terraform", "yaml", "bash"
    }
    treesitter_config.setup({
      ensure_installed = languages,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true
    })
  end
}
