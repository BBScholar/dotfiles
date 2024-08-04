require "nvchad.options"

local o = {
  sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
}

for k, v in pairs(o) do
  vim.o[k] = v
end

local g = {
  python3_host_prog = vim.fn.system{"which", "python3"}
}

for k, v in pairs(g) do
  vim.g[k] = v
end

local opt = {
  encoding = "utf-8",
  fileencoding = "utf-8",

  backup = true,
  backupdir = vim.fn.stdpath("data") .. "/backup//",

  swapfile = true,
  scrolloff = 10,

  termguicolors = true,
  emoji = false,
  relativenumber = false,

  wrap = true,
  linebreak = true,
  textwidth = 0,
  wrapmargin = 0,

  tabstop = 2,
  shiftwidth = 0, -- 0 forces same value as tabstop,
  expandtab = true,
  autoindent = true
}

for k, v in pairs(opt) do
  vim.opt[k] = v
end
