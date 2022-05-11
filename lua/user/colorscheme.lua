-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
local colorscheme = "nightfox"
-- local colorscheme = "darkplus"
-- local colorscheme = "github_light"
-- require "user.conf.github-nvim-theme"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then
  require "conf.onedark"
end
