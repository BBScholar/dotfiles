return  {
  	"williamboman/mason.nvim",
  	opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "prettier",
        "rust-analyzer", "rust-fmt",
        "bash-language-server",
        "yaml-language-server",
        "svls",
        "pyright", "autopep8",
        "dockerfile-language-server"
      },
  	}
}

