return {
  'mrcjkb/rustaceanvim',
  version = '^5', -- Recommended
  lazy = false, -- This plugin is already lazy
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      tools = {},
      server = {
        on_attach=function(client, bufnr)
          vim.keymap.set(
            "n",
            "<leader>a",
            function () vim.cmd.RustLsp("codeAction") end,
            { silent = true, buffer = bufnr }
          )
        end,
        default_settings = {
          ["rust-analyzer"] = {

          },
        },
      },
      dap = {}
    }
    local map = vim.keymap.set
    map("n", "K", "<cmd>lua vim.cmd.RustLsp({'hover', 'actions'})<CR>", { desc = "Rust Hover" })
    map("n", "<leader>ca", "<cmd>lua vim.cmd.RustLsp('codeAction')<CR>", { desc = "Rust Code Actions"})
  end
}
