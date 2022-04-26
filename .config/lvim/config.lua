-- Keybind
lvim.leader = "space"

-- Functionality
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
lvim.builtin.project.manual_mode = true
lvim.builtin.project.silent_chdir = false

-- Layout
vim.cmd("set relativenumber")
vim.opt.showtabline = 0
vim.opt.cmdheight = 1
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true

-- Log
lvim.log.level = "warn"

-- Format
lvim.format_on_save = true

-- Themes / Colors
lvim.transparent_window = false
lvim.colorscheme = "catppuccin"

-- Notifications
lvim.builtin.notify.active = true
lvim.builtin.notify.opts = {
    stages = "fade",
}

-- Telescope
lvim.builtin.telescope.setup = {
    layout_strategy = "vertical"
}

-- Completion
table.insert(lvim.builtin.cmp.sources, { name = "nvim_lsp" })

-- User plugins
lvim.plugins = {
    -- {
    --     "zbirenbaum/copilot.lua",
    --     event = {"InsertEnter"},
    --     config = function()
    --         vim.schedule(function()
    --             require("copilot").setup({
    --                 plugin_manager_path = vim.fn.expand "$HOME" .. "/.local/share/lunarvim/site/pack/packer",
    --             })
    --         end)
    --     end,
    -- },
    -- {
    --     "zbirenbaum/copilot-cmp",
    --     after = { "copilot.lua", "nvim-cmp" },
    --     config = function ()
    --         lvim.builtin.cmp.formatting.source_names["copilot"] = ""
    --         table.insert(lvim.builtin.cmp.sources, { name = "copilot" })
    --     end
    -- },

    -- Themes
    "flazz/vim-colorschemes",
    "bluz71/vim-nightfly-guicolors",
    "embark-theme/vim",
    "catppuccin/nvim",
    "sainnhe/everforest",
    "sainnhe/sonokai",
    "gekoke/inkstained-vim",
    "drewtempelmeyer/palenight.vim",
    "morhetz/gruvbox",

    -- Functionality
    "tpope/vim-surround",
    "MunifTanjim/nui.nvim",

    -- Language
    -- C
    "jackguo380/vim-lsp-cxx-highlight",
    -- fish
    "khaveesh/vim-fish-syntax",
    -- Idris
    {
        "ShinKage/idris2-nvim",
        requires = {
            "idris-community/idris2-lsp",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            table.insert(lvim.builtin.cmp.sources, { name = "idris2-lsp" })
            vim.cmd [[nnoremap <LocalLeader>c <Cmd>lua require('idris2.code_action').make_case()<CR>]]
            require('idris2').setup({})
        end,
    },
    -- Markdown
    "iamcco/markdown-preview.nvim",
    -- Python
    "petobens/poet-v",
    -- Xonsh
    "abhishekmukherg/xonsh-vim",
}

