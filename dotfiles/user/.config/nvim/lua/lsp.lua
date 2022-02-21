require 'io'

Prequire = function(module)
    local ok, mod = pcall(require, module)
    return ok, mod
end

local lspconfig = require("lspconfig")
local lspkind = require 'lspkind'
local cmp = require('cmp')
--local cmp_autopairs = require('nvim-autopairs.completion.cmp')

local _, types = Prequire("cmp.types")
local _, str = Prequire("cmp.utils.str")

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

--vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]

--cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    documentation = true,

    snippet = {
        expand = function(args)
	    require('luasnip').lsp_expand(args.body)
        end,
    },
    completion = { border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, scrollbar = "║" },
    window = {
        documentation = {
            border = "rounded",
            scrollbar = "║",
        },
        completion = {
            border = "rounded",
            scrollbar = "║",
        },
    },

    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },

    formatting = {
        fields = {
            cmp.ItemField.Kind,
            cmp.ItemField.Abbr,
            cmp.ItemField.Menu,
        },
        format = lspkind.cmp_format({
            with_text = false,
            before = function(entry, vim_item)
                -- Get the full snippet (and only keep first line)
                local word = entry:get_insert_text()
                if entry.completion_item.insertTextFormat == types.lsp.InsertTextFormat.Snippet then
                    word = vim.lsp.util.parse_snippet(word)
                end
                word = str.oneline(word)

                -- concatenates the string
                -- local max = 50
                -- if string.len(word) >= max then
                -- 	local before = string.sub(word, 1, math.floor((max - 3) / 2))
                -- 	word = before .. "..."
                -- end

                if
                    entry.completion_item.insertTextFormat == types.lsp.InsertTextFormat.Snippet
                    and string.sub(vim_item.abbr, -1, -1) == "~"
                    then
                        word = word .. "~"
                    end
                    vim_item.abbr = word

                    return vim_item
                end,
            }),
        },

        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'nvim_lua' },
            { name = 'crates' },
        }, {
            { name = 'buffer' },
        }),
    })

    cmp.setup.cmdline('/', {
        sources = {
            { name = 'buffer' }
        }
    })

    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
            { name = 'path' }
        }, {
            { name = 'cmdline' }
        })
    })

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

function is_nixos()
    nixossystem = io.popen("cat /etc/os-release"):read()
    if nixossystem:find("NixOS") then
        return true
    end
end

if is_nixos() then
    sumneko_root_path = "/nix/store/iqydi7781amrpc678y5nr3nxd7g7hqgw-sumneko-lua-language-server-2.3.6/extras"
    sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
else
    sumneko_root_path = "/usr/share/lua-language-server"
    sumneko_binary = "/usr/bin/lua-language-server"
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

lspconfig.sumneko_lua.setup {
    capabilities = capabilities,
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" };
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = runtime_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false
            },
        },
    },
}

lspconfig.bashls.setup {
    capabilities = capabilities,
    filetypes = { "bash", "sh", "zsh" }
}

lspconfig.rust_analyzer.setup{
    capabilities = capabilities,
    settings = {
        [ "rust-analyzer" ] = {}
    },
}

lspconfig.vimls.setup{
    capabilities = capabilities,
}

lspconfig.yamlls.setup{
    capabilities = capabilities,
}

lspconfig.pyright.setup{
    capabilities = capabilities,
}

lspconfig.ccls.setup {
    capabilities = capabilities,
    init_options = {
        compilationDatabaseDirectory = "build";
        highlight = { lsRanges = true; };
        cache = { directory = vim.fn.expand("$XDG_STATE_HOME/LSP/ccls-cache"); };
        index = { threads = 0; };
        clang = { excludeArgs = { "-frounding-math" }; };
        client = { snippetSupport = true; };
    }
}

lspconfig.rnix.setup{
    capabilities = capabilities,
}

lspconfig.gopls.setup{
    capabilities = capabilities,
    init_options = {
        usePlaceholders = true;
        completeUnimported = true;
    },
}

lspconfig.cssls.setup {
    capabilities = capabilities,
}

lspconfig.html.setup{}

lspconfig.jsonls.setup{}

vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>e', '<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n', '<space>i', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', '<space>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
