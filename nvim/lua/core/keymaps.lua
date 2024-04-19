local keymap = vim.keymap

-- General keymaps
keymap.set("i", "ii", "<ESC>")           -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>")  -- save

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>sj", "<C-w>-")     -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+")     -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5")    -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5")    -- make split windows width smaller
keymap.set('n', '<leader>sph', '<C-w>h')    -- jump to left split window
keymap.set('n', '<leader>spj', '<C-w>j')    --jump to lower split window
keymap.set('n', '<leader>spuk', '<C-w>k')   -- jump to upper split window
keymap.set('n', '<leader>sprl', '<C-w>l')   -- jump to right split window

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open a new tab
keymap.set("n", "<leader>th", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tl", ":tabn<CR>")     -- next tab
keymap.set("n", "<leader>th", ":tabp<CR>")     -- previous tab

-- buffers
keymap.set("n", "<A-h>", ":bprevious<CR>")
keymap.set("n", "<A-l>", ":bnext<CR>")
keymap.set("n", "<A-q>", ":bd<CR>")

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")   -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>")    -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer

-- Telescope
keymap.set('n', '<leader>f?', require('telescope.builtin').oldfiles)
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find)
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols)
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls)
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({ default_text = ":method:" }) end)

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

