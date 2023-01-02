local config = {

        -- set vim options here (vim.<first_key>.<second_key> =  value)
        plugins = {
                init = {
                        -- "catppuccin/nvim",
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
        -- colorscheme = "catppuccin",
        mappings = {
                n = {
                        ["<F12>"] = function() vim.api.nvim_command("@a") end,
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
                vscode = {
                        paths = {
                                "./lua/user/snippets",
                        },
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
