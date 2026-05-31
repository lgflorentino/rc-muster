vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.language-server-init")
require("config.nvim-treesitter-init")
require("config.nvim-telescope-init")


vim.lsp.enable({ "luals", "pylsp", "ruby_lsp", "rust_analyzer", "zls" })


local commands = vim.api.nvim_create_augroup('vimrc', {})

vim.api.nvim_create_autocmd({ "VimEnter" },  {
    group = commands,
    command = "NvimTreeOpen",
})

vim.opt.background = 'dark'
vim.opt.mouse = 'a'
vim.opt.ruler = true
vim.opt.number = true
vim.opt.scrolloff = 5 -- minimum nr. of lines above and below cursor
vim.opt.scrolljump = 50 -- minimum number of lines to scroll
vim.cmd[[colorscheme tokyonight-moon]]

vim.opt.laststatus = 2  -- dislay the status line


vim.opt.showmatch = true -- show matching braces

vim.api.nvim_set_option("clipboard", "unnamedplus")

-- not a friggen clue bro
vim.opt.guicursor={ 
    "n-v-c:block", 
    "i-ci-ve:ver25", 
    "r-cr:hor20", 
    "o:hor50",
    "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
    "sm:block-blinkwait175-blinkoff150-blinkon175"
}


--[[

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

]]--
