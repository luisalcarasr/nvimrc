local dap_install = require("dap-install")

dap_install.setup({
    installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

dap_install.config("vscode-chrome-debug", {})
dap_install.config("node-debug2", {})
