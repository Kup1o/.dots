local autocmd = vim.api.nvim_create_autocmd

-- enable rc filetype highlighting with nvim-treesitter 
-- set rust ft to .rc
autocmd("FileType", {
  pattern = "rc",
  callback = function()
    vim.bo.ft = "rust"
  end,
})

-- enable numbers of buffers in tabufline
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end
