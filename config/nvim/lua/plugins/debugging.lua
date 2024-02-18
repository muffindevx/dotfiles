return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "mxsdev/nvim-dap-vscode-js",
    {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    }
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local dapgo = require("dap-go")
    local dapjs = require("dap-vscode-js")

    dapjs.setup({
      adapters = { "node", "chrome", 'pwa-node', 'pwa-chrome' }
    })
    dapui.setup()
    dapgo.setup()

    dap.adapters["pwa-node"] = {
      type = "server",
      port = 9229,
      executable = {
        command = "node",
        args = { "./node_modules/js-debug/src/dapDebugServer.js"},
      }
    }

    dap.adapters["pwa-chrome"] = {
      type = "server",
      port = 9229,
      executable = {
        command = "node",
        args = { "./node_modules/js-debug/src/dapDebugServer.js"},
      }
    }

    local js_based_languages = { "typescript", "javascript", "typescriptreact" }

    for _, language in ipairs(js_based_languages) do
      dap.configurations[language] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach",
          processId = require 'dap.utils'.pick_process,
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-chrome",
          request = "launch",
          name = "Start Chrome with \"localhost\"",
          url = "http://localhost:3000",
          webRoot = "${workspaceFolder}",
          userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
        }
      }
    end

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<leader>bc', dap.continue, {})
  end
}
