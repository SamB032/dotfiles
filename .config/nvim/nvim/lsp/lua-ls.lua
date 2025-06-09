return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.git', 'init.lua' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },  -- Recognize 'vim' as a global variable
        disable = { "different-requires" },  -- Disable specific diagnostic
      },
    },
  },
}
