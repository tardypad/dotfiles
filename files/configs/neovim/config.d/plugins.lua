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

require("luasnip.loaders.from_snipmate").lazy_load()
