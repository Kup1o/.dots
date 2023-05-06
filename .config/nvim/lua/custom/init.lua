-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- enable rc filetype highlighting with nvim-treesitter 
-- set rust ft to .rc
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "rc",
  callback = function()
    vim.bo.ft = "rust"
  end,
})
