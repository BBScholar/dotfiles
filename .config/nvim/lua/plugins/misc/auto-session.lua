return {
  "rmagatti/auto-session",
  enable=true,
  lazy=false,
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  config = function ()
    local session_path = vim.fn.stdpath("data") .. "/sessions"
    if not vim.fn.isdirectory(session_path) then
      print("Creating sessions directory at " .. session_path)
      vim.fn.mkdir(session_path, "p", 700)
    end
    require("auto-session").setup {
      auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents", "/"},
      auto_session_root_dir = session_path
    }
  end
}
