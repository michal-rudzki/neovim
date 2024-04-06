vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap file
-- keymap.set("n", "<leade>key", ":edit c:\Users\michal\AppData\Local\nvim\lua\core\keymaps.lua<CR>")

-- nvim-tree
keymap.set("n", "<leader>tree", ":NvimTreeOpen<CR>") -- nvim-tree

-- none-ls formater
keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- alpha
-- keymap.set("n", "<leader>al", ":Alpha<CR>")

-- gitsigns
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})

-- split window managment
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window

-- move ctrl-[hjkl] to select active split
keymap.set("n", "<C-h>", ":wincmd h<CR>")
keymap.set("n", "<C-j>", ":wincmd j<CR>")
keymap.set("n", "<C-k>", ":wincmd k<CR>")
keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- toggleterm
-- keymap.set("n", "<leader>term", ":ToggleTerm<CR>")
-- Session Manager
-- keymap.set({ "n", "v" }, "<leader>sm", ":SessionManager<CR>") -- opens session Manager

-- tab managment
keymap.set("n", "<leader>to", ":tabnew<CR>")      -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")    -- close a tab
keymap.set("n", "<leader>tn", ":tabnext<CR>")     -- next tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>") -- previous tab
keymap.set("n", "<leader>tl", ":tabs<CR>")        -- list all open tabs

-- buffer managment
keymap.set("n", "<leader>bn", ":bnext<CR>")     -- buffer next
keymap.set("n", "<leader>bp", ":bprevious<CR>") -- buffer previous
keymap.set("n", "<leader>bl", ":buffers<CR>")   -- list all buffers
keymap.set("n", "<leader>bx", ":bdelete<CR>")   -- close buffer

-- nvim-lspconfig
keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "gd", vim.lsp.buf.definition, {})
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- telescope
keymap.set("n", "<leader>C", ":Telescope command_palette<CR>")
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, {})
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, {})
keymap.set("n", "<leader>fs", require("telescope.builtin").current_buffer_fuzzy_find, {})

keymap.set("n", "<leader>fm", function()
  require("telescope.builtin").treesitter({ default_text = ":method:" })
end)
