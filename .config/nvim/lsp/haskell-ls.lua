return {
  cmd = { 'haskell-language-server-wrapper', "--lsp"},
  filetypes = { 'haskell', 'lhaskell' },
  root_markers = { 'stack.yaml', 'cabal.project', 'package.yaml', '.git' },
  settings =
    { haskell =
      {
        hlintOn = true,
        maxCompletions = 50,
      },
  },
}
