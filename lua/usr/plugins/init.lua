return {
    {
        -- Plugin lsp-zero
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            lazy = true,
            config = false,
        },
        {
            'williamboman/mason.nvim',
            lazy = false,
            config = true,
        },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            event = 'InsertEnter',
            dependencies = {
                { 'L3MON4D3/LuaSnip' },
            },
        },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lua' },

        -- LSP
        {
            'neovim/nvim-lspconfig',
            cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
            event = { 'BufReadPre', 'BufNewFile' },
            dependencies = {
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'williamboman/mason-lspconfig.nvim' },
            },
        },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },             -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
    },
    {
        -- Plugin treesitter
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    {
        -- Plugin telescope
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'gbrlsnchs/telescope-lsp-handlers.nvim',
            'nvim-treesitter/nvim-treesitter-context',
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        },
    },
    {
        -- Plugin dap-ui
        'rcarriga/nvim-dap-ui',
        dependencies = {
            'mfussenegger/nvim-dap'
        },
    },
    {
        'nvim-telescope/telescope-dap.nvim',
        dependencies = {
            'mfussenegger/nvim-dap',
            'leoluz/nvim-dap-go',
            'theHamsta/nvim-dap-virtual-text',
            'nvim-telescope/telescope.nvim',
        }
    },
    {
        -- Plugin harpoon
        'theprimeagen/harpoon'
    },
    {
        -- Plugin go
        'ray-x/go.nvim',
        dependencies = { -- optional packages
            'ray-x/guihua.lua',
            'neovim/nvim-lspconfig',
            'nvim-treesitter/nvim-treesitter',
        },
        event = { 'CmdlineEnter' },
        ft = { 'go', 'gomod' },
        build = ":lua require('go.install').update_all_sync()", -- if you need to install/update all binaries
    },
    {
        -- Plugin Statusline
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            lazy = true
        },
    },
    {
        'folke/trouble.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('trouble').setup()
        end,
    },
    {
        -- Colorscheme rosé pine
        'rose-pine/neovim',
        name = 'rose-pine',
    },
    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },
    {
        -- Plugin navigation scrolling
        'karb94/neoscroll.nvim',
    },
    {
        -- Plugin comments
        'tpope/vim-commentary'
    },
    {
        -- Plugin auto-completion quotes, parens, brackets
        'Raimondi/delimitMate',
    },
    {
        -- Plugin git-signs
        'lewis6991/gitsigns.nvim',
    },
}
