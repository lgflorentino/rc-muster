-- Setup language servers.
--local lspconfig = vim.lsp.config()
local lspconfig = require('lspconfig')

--  lua-language-server start
vim.lsp.config['luals'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },

  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        }
    }
  }
}

--  lua-language-server end

--  python-language-server start
vim.lsp.config['pylsp'] = {
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
vim.lsp.config['ruby_lsp'] = {
    init_options = {
        completion = true,
        formatter = 'standard',
        linters = { 'standard' },
    }
}
--  ruby-lsp end
--
--  rust-language-server start
-- local on_attach = function(client)
--     require'completion'.on_attach(client)
-- end

vim.lsp.config['rust_analyzer'] = {
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
vim.lsp.config['zls'] = {
    on_attach = function(_, bufnr)
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        require('completion').on_attach()
        end;
}
-- zls end

