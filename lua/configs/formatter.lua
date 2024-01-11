-- Utilities for creating configurations
local util = require 'formatter.util'

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require('formatter').setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    lua = { require('formatter.filetypes.lua').stylua },
    c = { require('formatter.filetypes.c').astyle },
    bash = { require('formatter.filetypes.sh').shfmt },
    go = { require('formatter.filetypes.go').gofmt },

    ['*'] = {
      require('formatter.filetypes.any').remove_trailing_whitespace,
    },
  },
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup('__formatter__', { clear = true })
autocmd('BufWritePost', {
  group = '__formatter__',
  command = 'FormatWrite',
})
