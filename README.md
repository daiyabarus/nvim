<div align="center">
<p>
    <a>
      <img alt="Linux" src="https://img.shields.io/badge/Linux-%23.svg?style=flat-square&logo=linux&color=FCC624&logoColor=black" />
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
      <img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
    </a>
    <a href="https://github.com/daiyabarus/nvim/search?l=vim-script">
      <img src="https://img.shields.io/github/languages/top/daiyabarus/nvim" alt="Top languages"/>
    </a>
    <a href="https://github.com/daiyabarus/nvim/graphs/commit-activity">
      <img src="https://img.shields.io/github/commit-activity/m/daiyabarus/nvim?style=flat-square" />
    </a>
    <a href="https://github.com/daiyabarus/nvim/graphs/contributors">
      <img src="https://img.shields.io/github/contributors/daiyabarus/nvim?style=flat-square" />
    </a>
    <a>
      <img src="https://img.shields.io/github/repo-size/daiyabarus/nvim?style=flat-square" />
    </a>
    <a href="https://github.com/daiyabarus/nvim/blob/master/LICENSE">
      <img src="https://img.shields.io/github/license/daiyabarus/nvim?style=flat-square&logo=GNU&label=License" alt="License"/>
    </a>
</p>
</div>

# Introduction

This repo hosts my Nvim configuration for Linux Ubuntu.
`init.lua` is the config entry point for terminal Nvim,
and `ginit.vim` is the additional config file for [GUI client of Nvim](https://github.com/neovim/neovim/wiki/Related-projects#gui).

My configurations are heavily documented to make it as clear as possible.
While you can clone the whole repository and use it, it is not recommended though.
Good configurations are personal. Everyone should have his or her unique config file.
You are encouraged to copy from this repo the part you want and add it to your own config.

To reduce the possibility of breakage, **this config is only maintained for [the latest nvim stable release](https://github.com/neovim/neovim/releases/tag/stable).
No effort is spent on maintaining backward compatibility.**

# Install and setup

See [doc here](docs/README.md) on how to install Nvim's dependencies, Nvim itself,
and how to set up on different platforms (Linux, macOS, and Windows).

# Features #

+ Plugin management via [Packer.nvim](https://github.com/wbthomason/packer.nvim).
+ Code, snippet, word auto-completion via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
+ Language server protocol (LSP) support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
+ Git integration via [vim-fugitive](https://github.com/tpope/vim-fugitive).
+ Better escaping from insert mode via [better-escape.vim](https://github.com/nvim-zh/better-escape.vim).
+ Ultra-fast project-wide fuzzy searching via [LeaderF](https://github.com/Yggdroot/LeaderF).
+ Faster code commenting via [vim-commentary](https://github.com/tpope/vim-commentary).
+ Faster matching pair insertion and jump via [delimitMate](https://github.com/Raimondi/delimitMate).
+ Smarter and faster matching pair management (add, replace or delete) via [vim-sandwich](https://github.com/machakann/vim-sandwich).
+ Fast buffer jump via [hop.nvim](https://github.com/phaazon/hop.nvim).
+ Powerful snippet insertion via [Ultisnips](https://github.com/SirVer/ultisnips).
+ Beautiful statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
+ File tree explorer via [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua).
+ Better quickfix list with [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf).
+ Show search index and count with [nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens).
+ Command line auto-completion via [wilder.nvim](https://github.com/gelguy/wilder.nvim).
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim).
+ Asynchronous code execution via [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim).
+ Code highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
+ Code editing using true nvim inside browser via [firenvim](https://github.com/glacambre/firenvim).
+ Beautiful colorscheme via [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material) and other colorschemes.
+ Markdown writing and previewing via [vim-markdown](https://github.com/preservim/vim-markdown) and [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim).
+ LaTeX editing and previewing via [vimtex](https://github.com/lervag/vimtex)
+ Animated GUI style notification via [nvim-notify](https://github.com/rcarriga/nvim-notify).
+ Tags navigation via [vista](https://github.com/liuchengxu/vista.vim).
+ Code formatting via [Neoformat](https://github.com/sbdchd/neoformat).
+ Undo management via [vim-mundo](https://github.com/simnalamburt/vim-mundo)
+ ......
