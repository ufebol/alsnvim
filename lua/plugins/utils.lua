return {
    -- 非活动代码变暗
    {
        "folke/twilight.nvim",
        lazy = true,
        keys = {
            { "<leader>tl", "<cmd>Twilight<CR>", desc = "Open Twilight" }
        },
        opts = {}
    },
    -- 禅模式
    {
        "folke/zen-mode.nvim",
        lazy = true,
        keys = {
            { "<leader>tz", "<cmd>ZenMode<CR>", desc = "Open Zen Mode" }
        },
        opts = {}
    },
    -- 优化buffer关闭
    {
        "famiu/bufdelete.nvim",
        lazy = true,
        keys = {
            { "<leader>bd", "<cmd>Bdelete!<CR>", desc = "Close Buffer" }
        }
    },
    -- 显示一个弹出窗口，其中包含您开始输入的命令的可能键绑定
    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = {
            defaults = {
                mode = { "n", "v" },
                ["<leader>b"] = { name = "+buffer" },
                ["<leader>c"] = { name = "+command" },
                ["<leader>g"] = { name = "+git" },
                ["<leader>h"] = { name = "+hop" },
                ["<leader>i"] = { name = "+illuminate" },
                ["<leader>l"] = { name = "+lsp" },
                ["<leader>lg"] = { name = "+lspsaga" },
                ["<leader>m"] = { name = "+mason" },
                ["<leader>n"] = { name = "+dir" },
                ["<leader>r"] = { name = "+replace" },
                ["<leader>s"] = { name = "+search" },
                ["<leader>t"] = { name = "+zen" },
                ["<leader>w"] = { name = "+window" },
                ["<leader>x"] = { name = "+diagnostics/quickfix" }
            }
        },
        config = function(_, opts)
            local wk = require("which-key")
            wk.setup(opts)
            wk.register(opts.defaults)
        end
    },
    -- 完善旧的 quickfix 窗口
    {
        "kevinhwang91/nvim-bqf",
        lazy = true,
        ft = "qf"
    },
    -- 显示缩进线
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = { enabled = false },
        }
    },
    -- 彩虹括号
    {
        "HiPhish/rainbow-delimiters.nvim",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            local rainbow_delimiters = require 'rainbow-delimiters'
            require("rainbow-delimiters.setup")({
                strategy = {
                    [''] = rainbow_delimiters.strategy['global'],
                },
                query = {
                    [''] = 'rainbow-delimiters',
                },
                highlight = {
                    'RainbowDelimiterRed',
                    'RainbowDelimiterYellow',
                    'RainbowDelimiterBlue',
                    'RainbowDelimiterOrange',
                    'RainbowDelimiterGreen',
                    'RainbowDelimiterViolet',
                    'RainbowDelimiterCyan',
                },
            })
        end
    },
    {
        "max397574/better-escape.nvim",
        lazy = true,
        event = "InsertEnter",
        opts = {}
    }
}
