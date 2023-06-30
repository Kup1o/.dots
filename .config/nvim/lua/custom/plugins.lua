local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },

      {
        "simrat39/rust-tools.nvim",
        config = function()
          local rt = require "rust-tools"
          rt.setup {
            server = {
              on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<Leader>ah", rt.hover_actions.hover_actions, { buffer = bufnr })
                -- Code action groups
                vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
              end,
            },
          }
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      { "HiPhish/nvim-ts-rainbow2" },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
  --
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "windwp/nvim-autopairs",
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)

      -- setup cmp for autopairs
      local cmp_autopairs = require "nvim-autopairs.completion.cmp"
      require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())

      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      -- Auto-closing for vertical bar (|)
      npairs.add_rules {
        Rule("|", "|"):with_pair(cond.done "[%w%_|]"),
      }
      -- Auto-closing for angle brackets (<>)
      npairs.add_rules {
        Rule("<", ">"):with_pair(cond.done "[%w%_>]"),
      }
    end,
  },

  -- Completion framework:
  { "hrsh7th/nvim-cmp" },

  -- LSP completion source:
  { "hrsh7th/cmp-nvim-lsp" },

  -- Useful completion sources:
  { "hrsh7th/cmp-nvim-lua" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/vim-vsnip" },

  {
    "phaazon/hop.nvim",
    branch = "v2",
    cmd = {
      "HopWord",
      "HopChar1",
      "HopChar2",
      "HopPattern",
      "HopLine",
      "HopLineStart",
      "HopAnywhere",
    },
    config = function()
      require("hop").setup()
    end,
  },

  -- pretty diagnostics panel
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
      require("trouble").setup()
    end,
    dependencies = {
      {
        "folke/todo-comments.nvim",
        config = function()
          require("todo-comments").setup {
            keywords = {
              HACK = { icon = " ", color = "warning" },
              NOTE = { icon = "✎ ", color = "hint", alt = { "INFO" } },
            },
          }
        end,
        dependencies = { "nvim-lua/plenary.nvim" },
      },
    },
  },

  {
    "preservim/tagbar",
    event = "VeryLazy",
  },

  {
    "folke/zen-mode.nvim",
    dependencies = { "folke/twilight.nvim" },
    event = "VeryLazy",
  },
}

return plugins
