-- lint

require('lint').linters_by_ft = {
  sh = {'shellcheck'}
}


-- formatter

require("formatter").setup {
  filetype = {
    go = {require("formatter.filetypes.go").gofmt},

    ["*"] = {
      function()
        local ft = vim.bo.filetype
        if (ft == 'markdown' or ft == 'mail') then
          return nil
        end

        return require("formatter.filetypes.any").remove_trailing_whitespace()
      end
    }
  }
}


-- luasnip

local luasnip = require 'luasnip'
require("luasnip.loaders.from_snipmate").lazy_load()
luasnip.config.setup({
  cut_selection_keys = "<Tab>",
})


-- cmp

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require 'cmp'
cmp.setup {
  completion = {
    autocomplete = false,
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<{key/return/CR}>'] = cmp.mapping.confirm({ select = true }),
    ['<{key/complete/Tab}>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-{key/complete/Tab}>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'tags' },
  }
}
