require "nvchad.mappings"

local function create_alias(target_cmd, alias)
  vim.cmd("ca " .. alias .. " " .. target_cmd)
end

-- sanity protection
create_alias("qa", "Qa")
create_alias("qa", "qA")
create_alias("w", "W")
create_alias("q", "Q")

local map = vim.keymap.set

-- rebind semicolon to colon for sanity
map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- Allow moving through wrapped lines 
map("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true})
map("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true})
map("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true})
map("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true})

-- buffer bindings
map("n", "<leader>bd", "<cmd>:bdelete<CR>")
map("n", "<leader>bc", "")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
