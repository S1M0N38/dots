-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Globals for Dev plugins
P = function(v)
  print(vim.inspect(v))
  return v
end

vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    local path = vim.fn.getcwd() .. "/scripts/sync.sh"
    local file = io.open(path, "r")
    if file ~= nil and io.close(file) then
      vim.fn.jobstart("SIMPLE=1 bash " .. path .. " --upload", {
        on_stdout = function(_, data, _)
          local message = table.concat(data, "\n", 2, #data - 1)
          vim.notify("Uploaded\n" .. message, vim.log.levels.INFO)
        end,
        on_exit = function(_, code, _)
          if code == 0 then
          elseif code == 225 then
            vim.notify("Unable to connect to the server", vim.log.levels.ERROR)
          elseif code == 23 then
            vim.notify("Wrong filename in upload.txt", vim.log.levels.ERROR)
          else
            vim.notify("Unknown error code", vim.log.levels.ERROR)
            print(code)
          end
        end,
        stdout_buffered = true,
      })
    end
  end,
})
