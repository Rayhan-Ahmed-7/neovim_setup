local api = vim.api
local config = require "startup"
local new_cmd = api.nvim_create_user_command

vim.o.statusline = "%!v:lua.require('configs.stl." .. config.ui.statusline.theme .. "')()"

if config.ui.tabufline.enabled then
  require "configs.tabufline.lazyload"
end

-- Command to toggle NvDash
new_cmd("Nvdash", function()
  if vim.g.nvdash_displayed then
    require("configs.tabufline").close_buffer()
  else
    require("configs.nvdash").open()
  end
end, {})

new_cmd("NvCheatsheet", function()
  if vim.g.nvcheatsheet_displayed then
    vim.cmd "bw"
  else
    require("nvchad.cheatsheet." .. config.cheatsheet.theme)()
  end
end, {})

vim.schedule(function()
  -- load nvdash only on empty file
  if config.ui.nvdash.load_on_startup then
    local buf_lines = api.nvim_buf_get_lines(0, 0, 1, false)
    local no_buf_content = api.nvim_buf_line_count(0) == 1 and buf_lines[1] == ""
    local bufname = api.nvim_buf_get_name(0)

    if bufname == "" and no_buf_content then
      require("configs.nvdash").open()
    end
  end

  require "configs.au"
end)

if vim.version().minor < 10 then
  vim.notify "Please update neovim version to v0.10 at least! NvChad only supports v0.10+"
end
