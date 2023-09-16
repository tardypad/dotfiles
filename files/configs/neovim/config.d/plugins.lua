-- lint

require('lint').linters_by_ft = {
  sh = {'shellcheck'}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
