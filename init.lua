-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").compilers = { "zig" }

vim.cmd("set foldmethod=expr")
vim.cmd("set foldlevel=20")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
vim.cmd("set foldcolumn=1")

vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = '"'
vim.opt.shellxquote = ""

vim.opt.guicursor = "a:blinkon100"
vim.g.curl_options = "--ssl-no-revoke"

vim.cmd([[let &t_SI = "\e[6 q"]]) -- Insert mode: blinking bar
vim.cmd([[let &t_EI = "\e[2 q"]]) -- Normal mode: steady block

vim.opt.guicursor = {
  "n-v-c:block", -- Normal, Visual, and Command-line modes: block cursor
  "i:ver25-blinkon1", -- Insert mode: vertical bar (25%) with blinking
  "r:hor20", -- Replace mode: horizontal bar (20%)
  "o:hor50", -- Operator-pending mode: horizontal bar (50%)
  "a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking behavior
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch mode
}
