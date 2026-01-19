return {
  -- {
  --   "EdenEast/nightfox.nvim",
  --   config = function()
  --     -- load the dayfox variant
  --     require("nightfox").setup({
  --       options = {
  --         transparent = false,
  --       },
  --     })
  --     -- make the insert-mode cursor a black vertical line
  --     -- vim.opt.guicursor = {
  --     --   "n-v-c:block", -- block in normal/visual/command
  --     --   "i-ci:ver25-Cursor/lCursor", -- thin vertical line in insert mode
  --     --   "r-cr-o:hor20", -- horizontal bar in replace modes
  --     -- }
  --     -- -- define the cursor color
  --     -- vim.cmd([[
  --     --   highlight Cursor guifg=#ffffff guibg=#000000
  --     --   highlight lCursor guifg=#ffffff guibg=#000000
  --     -- ]])
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>t", group = "VimTeX", icon = "" },
        { "<leader>m", group = "Markview", icon = "" },
      },
    },
  },
  -- markview.
  {
    "OXY2DEV/markview.nvim",
    lazy = false,

    -- For blink.cmp's completion
    -- source
    -- dependencies = {
    --     "saghen/blink.cmp"
    -- },
  },
  -- add vimtex
  {
    "lervag/vimtex",
    init = function()
      -- Viewer settings
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_context_pdf_viewer = "skim"

      -- Enable VimTeX syntax & conceal (for math prettiness)
      vim.g.vimtex_syntax_enabled = 1
      vim.g.vimtex_syntax_conceal_disable = 0
      vim.g.vimtex_syntax_conceal = {
        accents = 2,
        ligatures = 2,
        cites = 1,
        fancy = 2,
        spacing = 3,
        greek = 5,
        math_delimiters = 3,
        math_super_sub = 2,
        math_symbols = 2,
      }

      -- Indentation settings
      vim.g.vimtex_indent_enabled = false
      vim.g.tex_indent_items = false
      vim.g.tex_indent_brace = false

      -- Suppression settings
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_log_ignore = {
        "Underfull",
        "Overfull",
        "specifier changed to",
        "Token not allowed in a PDF string",
      }

      -- Other settings
      vim.g.vimtex_mappings_enabled = false
      vim.g.tex_flavor = "latex"

      -- Compiler options (add -shell-escape by default)
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-pdf",
          "-shell-escape",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "markdown" },
      highlight = {
        enable = true,
        disable = { "latex" },
        additional_vim_regex_highlighting = { "latex", "markdown" },
      },
      -- other treesitter settings
    },
  },
}
