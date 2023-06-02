local opt = vim.opt

-- Treesitter based folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
