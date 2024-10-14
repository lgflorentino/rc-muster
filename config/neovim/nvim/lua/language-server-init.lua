-- Setup language servers.
local lspconfig = require('lspconfig')

--  lua-language-server start
lspconfig.lua_ls.setup{}
--  lua-language-server end

--  python-language-server start
lspconfig.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        },
        black = {
            enabled = true,
        },
        flake8 = {
            enabled = false,
        }
      }
    }
  }
}
--  python-language-server end

--  ruby-lsp start
lspconfig.ruby_lsp.setup({
    init_options = {
        completion = true,
        formatter = 'standard',
        linters = { 'standard' },
    }
})
--  ruby-lsp end
--
--  rust-language-server start
local on_attach = function(client)
    require'completion'.on_attach(client)
end
lspconfig.rust_analyzer.setup{
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
}
--  rust-language-server end

-- zls start
lspconfig.zls.setup{
    on_attach = function(_, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        require('completion').on_attach()
        end;
}
-- zls end

