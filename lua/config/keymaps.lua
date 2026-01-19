-- Nvim/lua/config/keymaps.lua

local map = vim.keymap.set
local opts = { silent = true, noremap = true }

--VimTeX Keymaps (<leader>t)
map("n", "<leader>tc", "<cmd>VimtexCompile<CR>", { desc = "VimTeX: Compile Continuous" })
map("n", "<leader>tv", "<cmd>VimtexView<CR>", { desc = "VimTeX: View PDF" })
map("n", "<leader>tl", "<cmd>VimtexCompileSS<CR>", { desc = "VimTeX: Compile Single Shot" })
map("n", "<leader>tk", "<cmd>VimtexStop<CR>", { desc = "VimTeX: Stop Compiler" })
map("n", "<leader>tK", "<cmd>VimtexStopAll<CR>", { desc = "VimTeX: Stop All Compilers" })
map("n", "<leader>tt", "<cmd>VimtexTocToggle<CR>", { desc = "VimTeX: Toggle TOC" })
map("n", "<leader>ti", "<cmd>VimtexInfo<CR>", { desc = "VimTeX: Info" })
map("n", "<leader>te", "<cmd>VimtexErrors<CR>", { desc = "VimTeX: Errors" })
map("n", "<leader>to", "<cmd>VimtexCompileOutput<CR>", { desc = "VimTeX: Compile Output" })

--Markview Keymaps (<leader>m)
map("n", "<leader>ms", "<cmd>Markview splitOpen<CR>", { desc = "Markview: Split Preview" })
map("n", "<leader>mt", "<cmd>Markview splitToggle<CR>", { desc = "Markview: Toggle Preview" })
map("n", "<leader>mc", "<cmd>Markview splitClose<CR>", { desc = "Markview: Close Preview" })
