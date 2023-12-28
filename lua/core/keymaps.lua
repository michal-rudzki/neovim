vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap file
-- keymap.set("n", "<leade>key", ":edit c:\Users\michal\AppData\Local\nvim\lua\core\keymaps.lua<CR>")

-- nvim-tree
keymap.set("n", "<leader>tree", ":NvimTreeOpen<CR>") -- nvim-tree

-- alpha
keymap.set("n", "<leader>al", ":Alpha<CR>")

-- split window managment
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window

-- move ctrl-[hjkl] to select active split
keymap.set("n", "<C-h>", ":wincmd h<CR>")
keymap.set("n", "<C-j>", ":wincmd j<CR>")
keymap.set("n", "<C-k>", ":wincmd k<CR>")
keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- toggleterm
keymap.set("n", "<leader>term", ":ToggleTerm<CR>")

-- tab managment
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tn", ":tabnext<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>") -- previous tab
keymap.set("n", "<leader>tl", ":tabs<CR>") -- list all open tabs

-- buffer managment
keymap.set("n", "<leader>bn", ":bnext<CR>") -- buffer next
keymap.set("n", "<leader>bp", ":bprevious<CR>") -- buffer previous
keymap.set("n", "<leader>bl", ":buffers<CR>") -- list all buffers

-- Telescope
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, {})
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, {})
keymap.set("n", "<leader>fs", require("telescope.builtin").current_buffer_fuzzy_find, {})
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, {})
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, {})
keymap.set("n", "<leader>fm", function() require("telescope.builtin").treesitter({default_text=":method:"}) end)

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')
