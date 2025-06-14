vim.lsp.config('*', {
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

vim.lsp.enable('gopls')

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '{key/g}{key/D}', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '{key/g}{key/d}', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '{key/K}', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<Leader>{key/D}', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<Leader>{key/=}', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
