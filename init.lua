require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	require("plugins.colortheme"),
	require("plugins.neotree"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocomplition"),
	require("plugins.gitsigns"),
	require("plugins.misc"),
	require("plugins.alpha"),
	require("plugins.indent-blankline"),
	require("plugins.dadbod"),
	require("plugins.typescripttoos"),
	require("plugins.mfussenegger"),
	require("plugins.copilot"),
	require("plugins.lazygit"),
	-- require("plugins.avante"),
	require("plugins.copilotchat"),
	require("plugins.conform"),
	require("plugins.diffview"),
	-- require("plugins.latex"),
	-- require("plugins.codecompanion"),
	-- require("plugins.dbee"),
})
vim.cmd.colorscheme("darkblue")
