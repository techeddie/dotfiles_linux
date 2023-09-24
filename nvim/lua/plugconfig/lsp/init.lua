local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "plugconfig.lsp.mason"
require ("plugconfig.lsp.handlers").setup()
-- require "plugconfig.lsp.null-ls"
