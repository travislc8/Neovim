local dap = require('dap')
local dapui = require('dapui')

dap.adapters.netcoredbg = {
  type = 'executable',
  command = 'netcoredbg',
  args = {'--interpreter=vscode --log'}
}

local last_dll_path = nil
dap.configurations.cs = {
  {
    type = "netcoredbg",
    name = "launch - netcoredbg",
    request = "launch",
    program = function() ok, result = pcall(function()
        local cwd = vim.fn.getcwd()
        if last_dll_path and vim.fn.filereadable(last_dll_path) == 1 then
            return last_dll_path
        end
        last_dll_path = vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '\\bin\\Debug\\', 'file')
        return last_dll_path
    end)
    if not ok then
        print('failed to get dll path')
        return nul
    end
    return result
    end
  },
}


dapui.setup()


dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
