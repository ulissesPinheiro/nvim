-- Keymaps for better default experience

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- For conciseness
local opts = { noremap = true, silent = true }

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Allow moving the cursor through wrapped lines with j, k
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- clear highlights
vim.keymap.set("n", "<Esc>", ":noh<CR>", opts)

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "New [B]uffer" }) -- new buffer

-- Increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Replace word under cursor
vim.keymap.set("n", "<leader>j", "*``cgn", opts)

-- Explicitly yank to system clipboard (highlighted and entire row)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


-- Symbols dinâmicos (busca conforme digita)
-- LSD
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "F[l]oat [D]iagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "[Q]uit diagnostic" })

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, { desc = "[G]oto [T]ype [D]efinition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]oto [R]eferences" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation for word under cursor" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "[F]ormat code" })

-- copilot
vim.keymap.set("n", "<leader>zc", ":CopilotChat<CR>", { desc = "Chat with [C]opilot" })
vim.keymap.set("v", "<leader>ze", ":CopilotChatExplain<CR>", { desc = "[E]xplain Code" })
vim.keymap.set("v", "<leader>zr", ":CopilotChatReview<CR>", { desc = "[R]eview Code" })
vim.keymap.set("v", "<leader>zf", ":CopilotChatFix<CR>", { desc = "[F]ix Code Issues" })
vim.keymap.set("v", "<leader>zo", ":CopilotChatOptimize<CR>", { desc = "[O]ptimize Code" })
vim.keymap.set("v", "<leader>zd", ":CopilotChatDocs<CR>", { desc = "Generate [D]ocs" })
vim.keymap.set("v", "<leader>zt", ":CopilotChatTests<CR>", { desc = "Generate Unit [T]ests" })
vim.keymap.set("n", "<leader>zm", ":CopilotChatCommit<CR>", { desc = "Generate Commit [M]essage" })
vim.keymap.set("v", "<leader>zs", ":CopilotChatCommit<CR>", { desc = "Generate Commit for [S]election" })
vim.keymap.set("v", "<leader>zw", ":CopilotChatOpen<CR>", { desc = "Open Chat [W]indow" })

-- conform prettier
vim.keymap.set("n", "<leader>p", function()
	require("conform").format({ formatters = { "prettier" } })
end, { desc = "Format code [P]rettier" })

-- Telescope
vim.keymap.set("n", "<leader>su", ":Telescope git_status<CR>", { desc = "Git Stat[U]s" })
vim.keymap.set("n", "<leader>sh", ":Telescope help_tags<CR>", { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", ":Telescope keymaps<CR>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", ":Telescope find_files<CR>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>st", ":Telescope<CR>", { desc = "[S]earch [T]elescope Pickers" })
vim.keymap.set("n", "<leader>sw", ":Telescope grep_string<CR>", { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<CR>", { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", ":Telescope diagnostics<CR>", { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", ":Telescope resume<CR>", { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", ":Telescope oldfiles<CR>", { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader>sm", ":Telescope lsp_document_symbols<CR>", { desc = "[S]earch [M]embers/Symbols in document" })
vim.keymap.set("n", "<leader>sS", ":Telescope lsp_workspace_symbols<CR>", { desc = "[S]earch [S]ymbols in workspace" })
vim.keymap.set("n", "<leader><leader>", ":Telescope buffers<CR>", { desc = "[ ] Find existing buffers" })


-- Keymaps para Diffview usando <leader>l como prefixo
vim.keymap.set("n", "<leader>lo", ":DiffviewOpen<CR>", { desc = "[O]pen Diffview" })
vim.keymap.set("n", "<leader>lc", ":DiffviewClose<CR>", { desc = "[C]lose Diffview" })
vim.keymap.set("n", "<leader>lh", ":DiffviewFileHistory<CR>", { desc = "Diffview [H]istory" })
vim.keymap.set("n", "<leader>lr", ":DiffviewRefresh<CR>", { desc = "[R]efresh Diffview" })
-- Diffview file history for current file
vim.keymap.set("n", "<leader>lf", ":DiffviewFileHistory %<CR>", { desc = "Histórico do arquivo atual (Dif[f]view)" })

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Lazy[G]it" })
-- DAP (Debug Adapter Protocol)
vim.keymap.set("n", "<space>b", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<space>gb", function()
	require("dap").run_to_cursor()
end, { desc = "Run to cursor" })

-- Eval var under cursor
vim.keymap.set("n", "<space>?", function()
	require("dapui").eval(nil, { enter = true })
end, { desc = "Eval variable under cursor" })

-- Float elements
vim.keymap.set("n", "<space>fs", function()
	require("dapui").float_element("scopes", { enter = true })
end, { desc = "Float scopes" })

vim.keymap.set("n", "<space>fc", function()
	require("dapui").float_element("console")
end, { desc = "Float console" })

-- Debug controls
vim.keymap.set("n", "<F1>", function()
	require("dap").continue()
end, { desc = "Continue" })
vim.keymap.set("n", "<F2>", function()
	require("dap").step_into()
end, { desc = "Step into" })
vim.keymap.set("n", "<F3>", function()
	require("dap").step_over()
end, { desc = "Step over" })
vim.keymap.set("n", "<F4>", function()
	require("dap").step_out()
end, { desc = "Step out" })
vim.keymap.set("n", "<F5>", function()
	require("dap").step_back()
end, { desc = "Step back" })
vim.keymap.set("n", "<F13>", function()
	require("dap").restart()
end, { desc = "Restart" })
