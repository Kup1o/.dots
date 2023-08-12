---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ha"] = { "<cmd> :HopAnywhere <cr>", "go to anywhere" },
    ["<leader>hc"] = { "<cmd> :HopChar1 <cr>", "go to any character" },
    ["<leader>hw"] = { "<cmd> :HopWord <cr>", "go to any word" },
    ["<leader>qs"] = { "<cmd> :leaderleaderleaderleader /\\w\\+/j % | copen <cr>", "open better quickfix" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
    ["<leader>sh"] = { "<cmd> :Gitsigns stage_hunk <cr>", "stage hunk" },
    ["<leader>tb"] = { "<cmd> :TagbarToggle <cr>", "open tagbar" },
    ["<leader>tt"] = { "<cmd> :TodoTelescope <cr>", "search todos" },
    ["<leader>zm"] = { "<cmd> :ZenMode <cr>", "activate zenmode" },
    ["<leader>["] = { ":!chmod +x %<CR>", "make an opened file executable" },
    ["<C-d>"] = { "<C-d>zz", "scroll down, cursor stays in the middle" },
    ["<C-u>"] = { "<C-u>zz", "scroll down, cursor stays in the middle" },
    ["J"] = { "mzJ`z", "take a line below to the current, cursor stays" },
    ["n"] = { "nzzzv", "search next, cursor stays in the middle" },
    ["N"] = { "Nzzzv", "search previous, cursor stays in the middle" },
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines up" },
  },
}

-- more keybinds!

return M
