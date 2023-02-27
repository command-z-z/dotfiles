local status, dap = pcall(require, "dap")
if (not status) then
    return
end

dap.adapters.lldb = {
  type = 'executable',
  command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- adjust as needed
  name = "lldb"
}

dap.adapters.cppdbg = {
    type = 'executable',
    command = "/home/yjzhang/.local/share/nvim/mason/bin/OpenDebugAD7",
    id = "cppdbg",
}

dap.configurations.c = {
  {
    name = "Launch File",
    type = "cppdbg",
    request = "launch",
    program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

dap.configurations.cpp = dap.configurations.c
dap.configurations.objc = dap.configurations.c
dap.configurations.rust = dap.configurations.cpp

vim.keymap.set({"i", "n", "v"}, "<F4>", "<cmd>lua require'dap'.terminate()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F5>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F6>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
vim.keymap.set({"i", "n", "v"}, "<F7>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true, buffer = bufnr})
