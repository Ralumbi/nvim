return {
  { 
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason").setup()
      require("masion-lspconfig").setup({
        ensure_installed = { "lua_ls", "ansiblels", "jinja_lsp", "biome", "intelephense", "ast_grep", "rust_analyzer" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ansiblels.setup({})
      lspconfig.jinja_lsp.setup({})
      lspconfig.biome.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.rust_analyzer.setup({})
    end  
  }
}
