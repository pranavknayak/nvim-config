-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ayucolor = "dark"

vim.g.gruvbox_material_background = "hard"
if vim.g.neovide == true then
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.15
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_fullscreen = true

  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-+>", function()
    change_scale_factor(1.1)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.1)
  end)
end

vim.g.everforest_background = "hard"
vim.g.sonokai_style = "andromeda"
vim.o.termguicolors = true
