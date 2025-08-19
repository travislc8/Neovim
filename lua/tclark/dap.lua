local dap = require('dap')
local dapui = require('dapui')

dap.adapters.coreclr = {
  type = 'executable',
  command = vim.fn.expand('$HOME') .. '/bin/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      if last_dll_path and vim.fn.filereadable(last_dll_path) == 1 then
        return last_dll_path
      end
      last_dll_path = vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
      return last_dll_path
  end,
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
