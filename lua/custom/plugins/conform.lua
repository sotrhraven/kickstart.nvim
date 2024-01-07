return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      lua = { "stylua" },
      c = { "astyle" },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })

    require("conform").formatters.astyle = {
      prepend_args = { "--style=allman" },
    }
  end,
  opts = {},
}
