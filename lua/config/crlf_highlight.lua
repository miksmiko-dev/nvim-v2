-- Highlight CRLF line endings (^M) in LazyVim / Neovim

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost" }, {
  pattern = "*",
  callback = function()
    -- Only highlight if file has CRLF endings
    if vim.bo.fileformat == "dos" then
      vim.notify("⚠️  Detected CRLF line endings (Windows format)", vim.log.levels.WARN)
      vim.cmd([[match ErrorMsg /\r$/]])
    else
      vim.cmd([[match none]])
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    if vim.bo.fileformat == "dos" then
      vim.bo.fileformat = "unix"
      vim.notify("✅ Auto-converted CRLF → LF", vim.log.levels.INFO)
    end
  end,
})
