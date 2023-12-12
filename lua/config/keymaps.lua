local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Disable key mappings in insert mode
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })

keymap.set("n", "<C-_>", ":CommentToggle<CR>", opts) -- Ctrl-/ in normal mode
keymap.set("v", "<C-_>", ":CommentToggle<CR>", opts) -- Ctrl-/ in visual

-- Delete a word backwards
-- keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sj", "<C-w>j")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.utils").replaceHexWithHSL()
end)

-- Lua function to check backspace
function _G.check_back_space()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline(".")[col] == #"\\s"
end

-- Use <C-l> for trigger snippet expand.
vim.api.nvim_set_keymap("i", "<C-l>", "<Plug>(coc-snippets-expand)", { noremap = true, silent = true })

-- Use <C-j> for select text for visual placeholder of snippet.
vim.api.nvim_set_keymap("v", "<C-j>", "<Plug>(coc-snippets-select)", { noremap = true, silent = true })

-- Use <C-j> for jump to next placeholder, it's default of coc.nvim
vim.g.coc_snippet_next = "<c-j>"

-- Use <C-k> for jump to previous placeholder, it's default of coc.nvim
vim.g.coc_snippet_prev = "<c-k>"

-- Use <C-j> for both expand and jump (make expand higher priority.)
vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(coc-snippets-expand-jump)", { noremap = true, silent = true })
