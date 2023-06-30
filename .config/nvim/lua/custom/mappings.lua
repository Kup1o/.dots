---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ha"] = { "<cmd> :HopAnywhere <cr>", "go to anywhere" },
    ["<leader>hc"] = { "<cmd> :HopChar1 <cr>", "go to any character" },
    ["<leader>hw"] = { "<cmd> :HopWord <cr>", "go to any word" },
    ["<leader>tb"] = { "<cmd> :TagbarToggle <cr>", "open tagbar" },
    ["<leader>tt"] = { "<cmd> :TodoTelescope <cr>", "search todos" },
    ["<leader>sh"] = { "<cmd> :Gitsigns stage_hunk <cr>", "stage hunk" },
    ["<leader>zm"] = { "<cmd> :ZenMode <cr>", "activate zenmode" },
  },
}

-- more keybinds!

return M
