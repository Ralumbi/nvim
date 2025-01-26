return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.ast_grep.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- Helper function to find the Python interpreter dynamically
      local function find_python_venv()
        -- Get the current working directory
        local cwd = vim.fn.getcwd()

        -- Common venv names
        local venv_names = { ".venv", "venv", "env" }

        for _, name in ipairs(venv_names) do
          local python_path = cwd .. "/" .. name .. "/bin/python"
          if vim.fn.executable(python_path) == 1 then
            return python_path
          end
        end

        -- Fallback to system Python
        return "python"
      end

      -- Configure the Pyright language server
      lspconfig.pyright.setup({
        --on_attach = function(client, bufnr)
          -- Additional setup (keybindings, etc.)
        --end,
        settings = {
          python = {
            pythonPath = find_python_venv(),
          },
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
