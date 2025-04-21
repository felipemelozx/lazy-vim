return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },

  -- best theme ever
  -- {
  --   "catppuccin/nvim",
  --   as = "catppuccin",
  --   lazy = true,
  --   config = function()
  --     require("catppuccin").setup({
  --       integrations = {
  --         alpha = true,
  --         cmp = true,
  --         flash = true,
  --         gitsigns = true,
  --         illuminate = true,
  --         indent_blankline = { enabled = true },
  --         lsp_trouble = true,
  --         mason = true,
  --         mini = true,
  --         native_lsp = {
  --           enabled = true,
  --           underlines = {
  --             errors = { "undercurl" },
  --             hints = { "undercurl" },
  --             warnings = { "undercurl" },
  --             information = { "undercurl" },
  --           },
  --         },
  --         navic = { enabled = true, custom_bg = "lualine" },
  --         neotest = true,
  --         noice = true,
  --         notify = true,
  --         neotree = true,
  --         semantic_tokens = true,
  --         telescope = true,
  --         treesitter = true,
  --         which_key = true,
  --       },
  --     })
  --   end,
  -- },

  -- { "rose-pine/neovim", name = "rose-pine" },

  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true, -- Pode ser carregado sob demanda
    config = function()
      -- Configurações específicas do tema (se necessário)
      vim.opt.background = "dark"
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- Configurações opcionais podem ser adicionadas aqui
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "tokyonight",
      -- colorscheme = "oxocarbon",
      colorscheme = "bluloco-dark",
      -- colorscheme = "onedark",
    },
  },
  -- {
  --   "rachartier/tiny-glimmer.nvim",
  --   event = "TextYankPost",
  --   cmd = "TinyGlimmer",
  --   opts = {
  --     -- your configuration
  --   },
  -- },
}
