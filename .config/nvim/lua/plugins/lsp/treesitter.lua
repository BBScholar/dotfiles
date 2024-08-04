return {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "vimdoc", "lua", "luadoc",
        "html", "css",
        "rust", "c", "cpp",
        "python",
        "java", "kotlin",
        "bash",
        "verilog", "systemverilog", "vhdl",
        "ssh_config",
        "markdown", "dot", "diff",
        "dockerfile", "cmake"
  		},
      highlight = {
        disable =  function (lang, buf)
          local max_filesize = 50 * 1024 * 1024 -- 50MB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end 
      }
  	},
  }
