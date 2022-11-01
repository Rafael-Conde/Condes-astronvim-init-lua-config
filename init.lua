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
      {
        "simrat39/rust-tools.nvim",
        config = function()
          local rt = require("rust-tools")
          rt.setup({
            rt.inlay_hints.enable(),
            server = {
              on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                -- Code action groups
              end,
            },
          })
        end
      },
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
