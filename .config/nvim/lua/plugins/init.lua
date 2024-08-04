return {
  -- configure LSP plugins 
  {import = "plugins.lsp.conform"},
  {import = "plugins.lsp.treesitter"},
  {import = "plugins.lsp.treesitter-textobjects"},
  {import = "plugins.lsp.lspconfig"},
  {import = "plugins.lsp.rustaceanvim"}, -- special LSP for rust
  {import = "plugins.lsp.mason"},
  {import = "plugins.lsp.hover"},

  -- configure debug 
  {import = "plugins.debug.dap"},

  -- configure GPT
  {import = "plugins.completion.codecompanion"},
  -- {import = "plugins.completion.copilot"},

  -- configure vcs plugins
  {import = "plugins.vcs.diffview"},
  {import = "plugins.vcs.neogit"},

  -- misc plugins
  {import = "plugins.misc.auto-session"},
  {import = "plugins.misc.undotree"},
  {import = "plugins.misc.better-escape"},
  {import = "plugins.misc.distant"},
  {import = "plugins.misc.zen-mode"},
  {import = "plugins.misc.scrolleof"},
  {import = "plugins.misc.precognition"}
}
