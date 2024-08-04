-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- local is_hypr = vim.fn.environ().HYPRLAND_INSTANCE_SIGNATURE
-- print(is_hypr)

M.ui = {
	theme = "tokyonight",
  theme_toggle = {"tokyonight"},
  transparency = false,

  statusline = {
    theme = "default",
    separator_style = "arrow"
  },

  nvdash = {
    load_on_startup = true
  },

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.lsp = {
  signature  = true,
  semantic_tokens = true
}

M.term = {
  float = {
    border = "rounded"
  }
}

M.base46 = {
  integrations = {
    "cmp",
    "dap",
    "lsp",
    "mason",
    "treesitter",
    "neogit",
    "nvimtree",
    "telescope",
    "devicons",
    "codeactionmenu",
  }
}

return M
