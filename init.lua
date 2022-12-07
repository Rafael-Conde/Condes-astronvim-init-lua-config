--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key




local config = {

        -- set vim options here (vim.<first_key>.<second_key> =  value)
        plugins = {
                init = {
                        "catppuccin/nvim",
                        { "lervag/vimtex" },
                },
                ["neo-tree"] = {
                        filesystem = {
                                filtered_items = {
                                        visible = true
                                }
                        }
                },
        },
        colorscheme = "catppuccin",
        mappings = {
                n = {
                        ["<F11>"] = function() vim.api.nvim_command("@a") end,
                },
        },
        lsp = {
                ["server-settings"] = {
                        clangd = {
                                capabilities = {
                                        offsetEncoding = "utf-8",
                                },
                        },
                },
        },
        luasnip = {
                vscode_snippet_paths = {
                        "./lua/user/snippets",
                },
        },
        options = function(local_vim)
                local_vim.opt.relativenumber = true
                local_vim.opt.wrap = false
                vim.api.nvim_command('set nohlsearch')
                return local_vim
        end,
}

return config
