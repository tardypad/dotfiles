vim.diagnostic.config({
    jump = {
        wrap = false,
        float = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = 'x',
            [vim.diagnostic.severity.WARN]  = '!',
            [vim.diagnostic.severity.INFO]  = '-',
            [vim.diagnostic.severity.HINT]  = '~',
        }
    }
})
