--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key




local config = {

    -- set vim options here (vim.<first_key>.<second_key> =  value)
    plugins = {
        init = {
            { "lervag/vimtex" },
            { "simrat39/rust-tools.nvim" },
        },
        ["neo-tree"] = {
            filesystem = {
                filtered_items = {
                    visible = true
                }
            }
        }
    },
    lsp = {
        clangd = {
            server = {
                capabiblities = {
                    offsetEncoding = "utf-8"
                },
            },
        },
    },
    options = function(local_vim)
      local_vim.opt.relativenumber = false
      return local_vim
    end,
}

return config
