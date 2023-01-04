local cmd = vim.cmd
cmd "set runtimepath+=~/.vim"
cmd "source ~/.vim/autoload/plug.vim"
cmd "source ~/.vim/vimrc/plugin.vim"
cmd "colorscheme tokyonight-night"
-- require('ayu').colorscheme()
-- require("onedark").load()
require('lualine').setup()
require("nvim-tree").setup{
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true
  },
  ensure_installed = {
    "javascript", "typescript", "css", "html", "json"
  }
}
require('telescope').setup()
require('nvim-ts-autotag').setup()
require("bufferline").setup{
  options = {
    diagnostics = "coc"
  }
}
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
cmd "source ~/.vim/vimrc/coc.vim"
cmd "source ~/.vim/vimrc/mic.vim"
