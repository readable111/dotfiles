-- bootstrap lazy.nvim, LazyVim and your plugins
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
require("config.lazy")
