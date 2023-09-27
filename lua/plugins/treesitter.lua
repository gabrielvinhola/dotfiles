return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local treesitter_parsers = require("nvim-treesitter.parsers")
        local treesitter_configs = require("nvim-treesitter.configs")

        treesitter_configs.setup {
          ensure_installed = { "rust", "typescript", "javascript", "tsx", "json", "yaml", "html", "css", "bash", "lua", "bicep", "go", "c", "c_sharp", "cpp" },
          highlight = {
            enable = true,
            disable = {},
          },
          indent = {
            enable = false,
            disable = {},
          },
          context_commentstring = {
            enable = true,
            enable_autocmd = false,
            config = {
              javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
              },
              typescript = {
                __default = '// %s',
                tsx_element = '{/* %s */}',
                tsx_fragment = '{/* %s */}',
                tsx_attribute = '// %s',
                comment = '// %s'
              }
            }
          }
        }

        local parser_config =  treesitter_parsers.get_parser_configs()
        parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
    end
}
