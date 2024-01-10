local wk = require 'which-key'
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  f = {
    name = 'File', -- optional group name
    e = { '<cmd>E<cr>', 'Open File Explorer' },
    s = { '<cmd>so %<cr>', 'Source Current File' },
    w = { '<cmd>w<cr>', 'Save File' },
  },
  Q = { '<cmd>q<cr>', 'Exit Neovim' },
}, { prefix = '<leader>' })
