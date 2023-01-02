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
    heirline = function(config)
      -- the first element of the default configuration table is the statusline
      config[1] = {
        -- set the fg/bg of the statusline
        hl = { fg = "fg", bg = "bg" },
        -- when adding the mode component, enable the mode text with padding to the left/right of it
        astronvim.status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
        -- add all the other components for the statusline
        astronvim.status.component.git_branch(),
        astronvim.status.component.file_info(),
        astronvim.status.component.git_diff(),
        astronvim.status.component.diagnostics(),
        astronvim.status.component.fill(),
        astronvim.status.component.cmd_info(),
        astronvim.status.component.fill(),
        astronvim.status.component.lsp(),
        astronvim.status.component.treesitter(),
        astronvim.status.component.nav(),
      }
      -- return the final configuration table
      return config
    end,
  },
  -- colorscheme = "catppuccin",
  mappings = {
    n = {
      ["<F12>"] = {"@a", desc = "executes the macro at a"},
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
