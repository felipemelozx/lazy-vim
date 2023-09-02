return {
  -- add more treesitter parsers

  {
    "nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "html",
        "css",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "graphql",
        "prisma",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      })

      -- vim.list_extend(opts.autotag, {
      --   enable = true,
      -- })
    end,
  },
  {
    "fladson/vim-kitty",
    ft = "kitty.conf",
    event = "VeryLazy",
  },
}
