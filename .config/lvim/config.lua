-- Keybind
lvim.leader = "space"
vim.api.nvim_set_keymap("n", "<Leader><Leader>d", ":Copilot disable <CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader><Leader>c", ":Copilot enable <CR>", { noremap = true, silent = true })

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
    "gekoke/inkstained-vim",
    "drewtempelmeyer/palenight.vim",
    "morhetz/gruvbox",

    -- Functionality
    "Pocco81/TrueZen.nvim",
    "tpope/vim-surround",

    -- Language
    -- Markdown
    "iamcco/markdown-preview.nvim",
    -- Python
    "petobens/poet-v",
    -- Idris
    "edwinb/idris2-vim",
    -- Xonsh
    "abhishekmukherg/xonsh-vim",
    -- fish
    "khaveesh/vim-fish-syntax"
}

lvim.builtin.project.manual_mode = true
lvim.builtin.project.silent_chdir = false

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

lvim.builtin.cmp.mapping["<C-k>"] = function(fallback)
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
lvim.transparent_window = false
lvim.colorscheme = "gruvbox"

