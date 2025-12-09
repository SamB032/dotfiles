return {
  cmd = { "typescript-language-server", "--stdio" },
  root_markers = { 'package.json', 'bun.lockb', '.git' },
  filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
}
