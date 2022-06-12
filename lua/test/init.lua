local M = {}

print("Hello v22")

function M.setup()
	vim.api.nvim_set_keymap("n", "gm", "<cmd>require'printHello()'<cr>", nil)
end

function M.printHello()
	print(vim.api.nvim_get_keymap('n'))
end

return M
