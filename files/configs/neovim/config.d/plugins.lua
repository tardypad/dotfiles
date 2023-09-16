-- lint

require('lint').linters_by_ft = {
  sh = {'shellcheck'}
}


-- formatter

require("formatter").setup {
  filetype = {
    go = {require("formatter.filetypes.go").gofmt}
  }
}
