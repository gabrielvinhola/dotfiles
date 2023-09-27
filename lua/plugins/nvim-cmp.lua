return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'onsails/lspkind.nvim',
        'saadparwaiz1/cmp_luasnip'
    },
    config = function()
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")
        local cmp = require "cmp"
        vim.opt.completeopt = {"menuone", "noinsert", "noselect" }
        lspkind.init()
        cmp.setup({
            performance = {
                debounce = 150,
            },
            snippet = {
              expand = function(args)
                luasnip.lsp_expand(args.body)
              end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = {
              { name = "nvim_lua" },
              { name = "nvim_lsp", max_item_count = 20 },
              { name = "path" },
              { name = "luasnip", max_item_count = 5 },
              { name = "buffer", keyword_length = 5 }
          },
          formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
              -- Kind icons
              vim_item.kind = lspkind.presets.default[vim_item.kind]
              vim_item.menu = ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                buffer = "[Buffer]",
                path = "[Path]",
              })[entry.source.name]
              return vim_item
            end,
          },
           window = {
               documentation = {
                    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
                },
           },
          experimental = {
            ghost_text = true,
            native_menu = false,
          },
          })
          vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
    end
}
