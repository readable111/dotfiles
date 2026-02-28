return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { "ruby-lsp" },
          init_options = {
            formatter = "rubocop",
            linters = { "rubocop" }
          },
        },
      },
    },
  },
}


-- local lspconfig = require('lspconfig')
--
-- lspconfig.ruby_ls.setup({
--   cmd = {os.expanded_home .. "/.rbenv/shims/ruby-lsp"},
--   filetypes = { "ruby" },
--   root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
--   init_optinos = {
--     formatter  ="rubocop",
--     linters ={ "rubocop" }
--   },
--   on_attach = function (client, bufnr)
--     local opts = { buffer = bufnr, noremap = true, silent = true }
--
--     -- Navigation
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)  -- Go to definition
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)  -- Go to declaration
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)  -- Find references
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)  -- Go to implementation
--     vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)  -- Go to type definitio
--
--     -- Documentation
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)  -- Hover documentation
--     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)  -- Signature help
--
--     vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)  -- Code actions
--     vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)  -- Rename symbol
--
--
--     vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)  -- Show diagnostic
--     vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)  -- Diagnostic list
--
--     -- Workspace
--     vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set('n', '<leader>wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
--   end
-- })
