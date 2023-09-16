local lspconfig = require('lspconfig')
lspconfig.gopls.setup {}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '{key/g}{key/D}', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '{key/g}{key/d}', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '{key/K}', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '{key/g}{key/i}', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-{key/k}>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<Leader>{key/D}', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<Leader>{key/r}{key/n}', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<Leader>{key/c}{key/a}', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '{key/g}{key/r}', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<Leader>{key/=}', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
