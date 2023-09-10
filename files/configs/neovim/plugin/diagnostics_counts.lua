-- functions to return some counts related to diagnostics

if vim.g.loaded_diagnostics_counts ~= nil then
  return
end
vim.g.loaded_diagnostics_counts = true

function DiagnosticsErrorsCount()
  local counts = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  if counts == 0 then return '' end
  return string.format('x %d ', counts)
end

function DiagnosticsWarningsCount()
  local counts = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  if counts == 0 then return '' end
  return string.format('! %d ', counts)
end

function DiagnosticsInfosCount()
  local counts = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
  if counts == 0 then return '' end
  return string.format('i %d ', counts)
end
