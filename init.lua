--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key




local config = {

  -- set vim options here (vim.<first_key>.<second_key> =  value)
  plugins = {
   init = {
     -- { "frabjous/knap" }
     { "lervag/vimtex" },
     { "simrat39/rust-tools" },
    },
    ["neo-tree"] = {
      filesystem = {
        filtered_items = {
          visible = true
        }
      }
    },
  },
  -- If you need more control, you can use the function()...end notation
  options = function(local_vim)
    local_vim.opt.relativenumber = false
  end,
  -- Extend LSP configuration
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
}

return config
