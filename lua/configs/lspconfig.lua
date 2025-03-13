-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = {
  html = {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
    on_init = nvlsp.on_init,
    filetypes = { "html", "templ" },
  },
  htmx = {
    filetypes = { "html", "templ" },
  },
  tailwindcss = {
    filetypes = { "templ", "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    settings = {
      tailwindCSS = {
        includeLanguages = {
          templ = "html",
        },
      },
    },
  },
  cssls = {},
  ts_ls = {},
  eslint = {
    settings = {
      workingDirectories = { mode = "auto" },
      format = true,
    },
  },
  terraformls = {},
  pyright = {},
  zls = {},
  templ = {},
  pbls = {},
  gopls = {
  	settings = {
      gopls = {
        annotations = {
          escape = true,
        },
        codelenses = {
          generate = false,
          gc_details = true,
        }
      },
	  },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  lspconfig[name].setup(opts)
end

