local keymap = vim.keymap

-- General keymaps
keymap.set("i", "ii", "<ESC>")                      -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>")            -- save and quit
keymap.set("n", "<leader>qq", ":q<CR>")             -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>")             -- save

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v")             -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")             -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")             -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>")         -- close split window
keymap.set("n", "<leader>sj", "<C-w>-")             -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+")             -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5")            -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5")            -- make split windows width smaller
keymap.set("n", "<C-h>", "<C-w>h")                  -- jump to left split window
keymap.set("n", "<C-j>", "<C-w>j")                  -- jump to lower split window
keymap.set("n", "<C-k>", "<C-w>k")                  -- jump to upper split window
keymap.set("n", "<C-l>", "<C-w>l")                  -- jump to right split window

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>")        -- open a new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>")      -- close a tab
keymap.set("n", "<leader>tl", ":tabn<CR>")          -- next tab
keymap.set("n", "<leader>th", ":tabp<CR>")          -- previous tab

-- buffers
keymap.set("n", "<leader>bh", ":bprevious<CR>")     -- previous buffer
keymap.set("n", "<leader>bl", ":bnext<CR>")         -- next buffer
keymap.set("n", "<leader>bc", ":bd<CR>")            -- close buffer

-- Telescope
vim.keymap.set('n', '<leader>f?', require('telescope.builtin').oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set('n', '<leader>ff', function()
	require('telescope.builtin').find_files({ hidden = true })
	end, { desc = "[F]ind [F]iles" })
vim.keymap.set('n', '<leader>fg', function()
	require('telescope.builtin').live_grep({ glob_pattern= "!package-lock.json", additional_args = { "--hidden" } })
	end, { desc = "[F]ind by [G]rep" })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = "[F]ind [B]uffers" })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').git_branches, { desc = "[F]ind [B]ranches" })
vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = "[D]ocument [S]ymbols" })

-- Tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")   -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>")    -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer

-- LSP Bindings
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP Actions',
    callback = function(event)
        local attach_opts = { buffer = event.buf, remap = false }

        -- Diagnostics mappings
        vim.keymap.set('n', '<leader>k', function()
            vim.lsp.diagnostic.open_float(0, { scope='line' })
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Open diagnostics'}))
        vim.keymap.set('n', '<leader>kn', function()
            vim.lsp.diagnostic.goto_next()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Next diagnostic'}))
        vim.keymap.set('n', '<leader>kp', function()
            vim.lsp.diagnostic.goto_prev()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Previous diagnostic'}))

        -- Code navigation and Discovering
        vim.keymap.set('n', '<leader>gi', function()
            vim.lsp.buf.implementation()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] [G]o to [i]mplementation'}))
        vim.keymap.set('n', '<leader>gD',  function()
            vim.lsp.buf.declaration()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] [G]o to [D]eclaration'}))
        vim.keymap.set('n', '<leader>gd',  function()
            vim.lsp.buf.definition()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] [G]o to [d]efinition'}))
        vim.keymap.set('n', '<leader>gr', function()
            vim.lsp.buf.references()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Find References'}))
        vim.keymap.set('n', '<leader>gh', function()
            vim.lsp.buf.hover()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Hover'}))
        vim.keymap.set('n', '<leader>gH', function()
            vim.lsp.buf.signature_help()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Signature Help'}))

        -- Refactorings
        vim.keymap.set('n', '<leader>rr', function()
            vim.lsp.buf.rename()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] [R]ename [r]efac otor'}))
        vim.keymap.set('n', '<leader>.', function()
            vim.lsp.buf.code_action()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] Code action'}))
        vim.keymap.set('n', '<leader>rf', function()
            vim.lsp.buf.formatting()
        end, vim.tbl_extend('error', attach_opts, { desc = '[LSP] [R]e[f]ormat'}))

        vim.keymap.set('n', '<leader>cn', ':cnext<CR>')
        vim.keymap.set('n', '<leader>cp', ':cprev<CR>')

    end
})
