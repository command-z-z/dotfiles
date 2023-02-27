local status, dap_python = pcall(require, "dap-python")
if (not status) then
    return
end

dap_python.setup('~/.local/share/nvim/mason/packages/debugpy/venv/bin/python')
