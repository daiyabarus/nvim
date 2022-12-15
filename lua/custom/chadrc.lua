-- custom/chadrc

local plugin_override = require "custom.plugins.override"
local custom_colors = require "custom.colors"

local M = {}

-- Overwrite options
M.options = {

  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {

  theme = "onedark", -- default theme
  transparency = false,
  hl_add = {
    DiffText = {
      fg = "none",
      bg = custom_colors.diff_text,
    },
    -- Gitsigns
    GitSignsAdd = {
      fg = "green",
      bg = "none",
    },
    GitSignsChange = {
      fg = "blue",
      bg = "none",
    },
    GitSignsDelete = {
      fg = "red",
      bg = "none",
    },
    GitWordAdd = {
      bg = custom_colors.diff_text,
    },
    GitWordDelete = {
      bg = custom_colors.diff_text,
    },
    GitSignsAddNr = {
      fg = "green",
      bg = "black",
    },
    GitSignsChangeNr = {
      fg = "blue",
      bg = "black",
    },
    GitSignsDeleteNr = {
      fg = "red",
      bg = "black",
    },
    GitSignsAddLn = {
      fg = "none",
      bg = custom_colors.diff_add,
    },
    GitSignsChangeLn = {
      fg = "none",
      bg = custom_colors.diff_change,
    },
    GitSignsDeleteLn = {
      fg = "none",
      bg = custom_colors.diff_delete,
    },
    -- Diagnostics
    DiagnosticLineNrError = {
      fg = "red",
      bg = "black",
    },
    DiagnosticLineNrWarn = {
      fg = "yellow",
      bg = "black",
    },
    DiagnosticLineNrHint = {
      fg = "purple",
      bg = "black",
    },
    DiagnosticLineNrInfo = {
      fg = "green",
      bg = "black",
    },
    -- statusline
    St_FilePath_text = {
      fg = "light_grey",
      bg = "black",
    },
    St_Git_icon = {
      fg = "black",
      bg = "green",
    },
    St_Git_text = {
      fg = "white",
      bg = "lightbg",
    },
    St_FileType_icon = {
      fg = "black",
      bg = "purple",
    },
    St_FileType_text = {
      fg = "white",
      bg = "lightbg",
    },
    St_LspStatus_icon = {
      fg = "black",
      bg = "teal",
    },
    St_Sep = {
      fg = "black",
      bg = "black",
    },
  },
  hl_override = {
    CursorLine = {
      bg = "black2",
    },
    FloatBorder = {
      fg = "grey",
      bg = "black",
    },
    NormalFloat = {
      fg = "white",
      bg = "black",
    },
    TabLine = {
      fg = "white",
      bg = "black",
    },
    TabLineSel = {
      fg = "white",
      bg = "grey",
    },
    TabLineFill = {
      fg = "black",
      bg = "black",
    },
    Pmenu = {
      bg = "black",
    },
    -- Git
    DiffAdd = {
      fg = "none",
      bg = custom_colors.diff_add,
    },
    DiffChange = {
      fg = "none",
      bg = custom_colors.diff_change,
    },
    DiffDelete = {
      fg = "none",
      bg = custom_colors.diff_delete,
    },
    SignColumn = {
      bg = "black",
    },
    FoldColumn = {
      bg = "black",
    },
    -- Modes
    St_NormalMode = {
      fg = "black",
      bg = "blue",
    },
    St_InsertMode = {
      fg = "black",
      bg = "green",
    },
    St_VisualMode = {
      fg = "black",
      bg = "purple",
    },
    St_CommandMode = {
      fg = "black",
      bg = "red",
    },
    St_ReplaceMode = {
      fg = "black",
      bg = "orange",
    },
    -- statusline
    StatusLine = {
      bg = "black",
    },
    St_cwd_icon = {
      fg = "black",
      bg = "red",
    },
    St_cwd_text = {
      fg = "white",
      bg = "lightbg",
    },
    St_lspError = {
      fg = "white",
      bg = "lightbg",
    },
    St_lspWarning = {
      fg = "white",
      bg = "lightbg",
    },
    St_LspHints = {
      fg = "white",
      bg = "lightbg",
    },
    St_LspInfo = {
      fg = "white",
      bg = "lightbg",
    },
    St_LspStatus = {
      fg = "white",
      bg = "lightbg",
    },
    St_EmptySpace = {
      fg = "grey",
      bg = "grey",
    },
    -- Blankline
    IndentBlanklineContextChar = {
      fg = "line",
    },
    IndentBlanklineContextStart = {
      bg = "one_bg2",
    },
    MatchWord = {
      fg = "white",
      bg = "one_bg2",
    },
    -- nvimtree
    NvimTreeNormal = {
      bg = "black",
    },
    NvimTreeNormalNC = {
      bg = "black",
    },
    NvimTreeEndOfBuffer = {
      fg = "black",
    },
    NvimTreeWinSeparator = {
      fg = "black",
      bg = "black",
    },
  },
  changed_themes = {
    onedark = {
      -- base_16 = {
      --   base08 = "#",
      -- },
      base_30 = {
        line = custom_colors.bg_default2,
      },
    },
  },
}

M.plugins = {

  --
  -- Install plugins
  --
  ["NvChad/ui"] = {
    after = "base46",
    config = function()
      vim.opt.statusline = "%!v:lua.require'custom.plugins.statusline'.run()"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["hrsh7th/nvim-cmp"] = {
    -- Disable friendly-snippets dependency
    after = "nvim-lspconfig",
    config = function()
      require "plugins.configs.cmp"
    end,
  },
  ["L3MON4D3/LuaSnip"] = {
    -- Disable friendly-snippets dependency
    wants = "nvim-lspconfig",
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["jayp0521/mason-null-ls.nvim"] = {
    wants = "mason.nvim",
    after = "null-ls.nvim",
    config = function()
      require "custom.plugins.mason-null-ls"
    end,
  },
  ["folke/trouble.nvim"] = {
    config = function()
      require "custom.plugins.trouble"
    end,
  },
  ["nanozuki/tabby.nvim"] = {
    after = "nvim-web-devicons",
    config = function()
      require "custom.plugins.tabby"
    end,
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require "custom.plugins.telescope_file_browser"
    end,
  },
  ["tpope/vim-fugitive"] = {},
  ["heavenshell/vim-pydocstring"] = {},
  ["famiu/bufdelete.nvim"] = {}, -- https://github.com/famiu/bufdelete.nvim
  ["nvim-telescope/telescope.nvim"] = {
    -- Disable lazy-loading for telescope
    module = "telescope",
    -- Pin release branch of telescope
    branch = "0.1.x",
  },

  --
  -- Override plugins
  --
  ["nvim-telescope/telescope.nvim"] = {
    override_options = plugin_override.telescope,
  },
  ["hrsh7th/nvim-cmp"] = {
    override_options = plugin_override.cmp,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = plugin_override.treesitter,
  },
  ["lewis6991/gitsigns.nvim"] = {
    override_options = plugin_override.gitsigns,
  },
  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = plugin_override.blankline,
  },
  ["williamboman/mason.nvim"] = {
    override_options = plugin_override.mason,
  },

  --
  -- Remove plugins
  --
  ["folke/which-key.nvim"] = false,
  -- ["rafamadriz/friendly-snippets"] = false,
  ["NvChad/nvterm"] = false,
  ["akinsho/bufferline.nvim"] = false,
}

-- Overwrite mapping
M.mappings = require "custom.mappings"

return M
