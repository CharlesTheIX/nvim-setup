return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      ensure_installed = {}
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.vimls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.zls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc= 'Show hover information' })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc= 'Go to definition' })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc= 'Go to declaration' })
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc= 'Show references' })
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc= 'Code action' })
    end
  }
}

