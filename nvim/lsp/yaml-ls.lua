return {
  cmd = { 'yaml-language-server', '--stdio' },  -- Start YAML LSP server
  filetypes = { 'yaml', 'yml' },
  root_markers = { '.git', '.yamllint', 'yamlls.config.json' },  -- Detect project root
}
