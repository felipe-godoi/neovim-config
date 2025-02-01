local organizeImports = "_typescript.organizeImports"
local command = "workspace/executeCommand"
local timeout = 700

local function get_clients(filter)
	local get_clients = vim.lsp.get_clients or vim.lsp.get_active_clients
	return get_clients(filter)
end

local function get_typescript_client(bufnr)
	local clients = get_clients({
		name = "ts_ls",
		bufnr = bufnr,
	})

	if #clients == 0 then
		return nil
	end

	return clients[1]
end

function organize_imports()
	local params = {
		command = organizeImports,
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = "",
	}

	local res = vim.lsp.buf_request_sync(0, command, params, timeout)

	local typescript_client = get_typescript_client(0)
	if typescript_client == nil then
		return
	end
end
