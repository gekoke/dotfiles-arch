-- Keybind
lvim.leader = "space"

-- Functionality
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Log
lvim.log.level = "warn"

-- Format
lvim.format_on_save = true

-- Plugins
lvim.plugins = {
    -- Copilot
    "github/copilot.vim",
    -- Themes
    "sainnhe/everforest",
    -- Markdown
    "iamcco/markdown-preview.nvim",
    -- Language
        -- Python
        "petobens/poet-v",
        -- Idris
        "idris-hackers/idris-vim",
        -- Xonsh
        "abhishekmukherg/xonsh-vim",
        -- fish
        "khaveesh/vim-fish-syntax"
}

-- Layout
vim.cmd("set relativenumber")
vim.opt.showtabline = 0
vim.opt.cmdheight = 1

lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true

-- Copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
local cmp = require "cmp"

lvim.builtin.cmp.mapping["<Tab>"] = function(fallback)
  if cmp.visible() then
    cmp.select_next_item()
  else
    local copilot_keys = vim.fn["copilot#Accept"]()
    if copilot_keys ~= "" then
      vim.api.nvim_feedkeys(copilot_keys, "i", true)
    else
      fallback()
    end
  end
end

-- Themes / Colors
lvim.transparent_window = true
lvim.colorscheme = "everforest"
