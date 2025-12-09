if true then
  return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "hrsh7th/nvim-ix",
  dependencies = {
    "hrsh7th/nvim-cmp-kit",
  },

  config = function()
    -- vim.o.winborder = "rounded" -- (Optional) nvim-ix follows global `winborder` settings to render windows

    local ix = require("ix")

    -- Setup nvim-ix
    ix.setup({
      -- Register snippet expand function (optional but recommend to set this).
      expand_snippet = function(snippet_body)
        vim.snippet.expand(snippet_body) -- for `neovim built-in` users
        -- require('luasnip').lsp_expand(snippet_body) -- for `LuaSnip` users
        -- require('snippy').expand_snippet(snippet_body) -- for `nvim-snippy` users
        -- vim.fn["vsnip#anonymous"](snippet_body) -- for `vim-vsnip` users
      end,

      -- Check if macro is executing or not
      is_macro_executing = function()
        return vim.fn.reg_executing() ~= ""
      end,

      -- Check if macro is recording or not
      is_macro_recording = function()
        return vim.fn.reg_recording() ~= ""
      end,

      -- Completion configuration
      completion = {
        -- Enable/disable auto completion
        auto = true,

        -- Enable/disable auto documentation
        auto_docs = true,

        -- Enable/disable auto select first item in completion menu
        auto_select_first = false,

        -- Enable/disable LSP's preselect feature
        preselect = false,

        -- Default keyword pattern for completion
        default_keyword_pattern = require("cmp-kit.completion.ext.DefaultConfig").default_keyword_pattern,

        -- Performance related configuration
        performance = {
          fetching_timeout_ms = 120,
          menu_update_throttle_ms = 32,
        },

        -- LSP related configuration
        lsp = {
          -- Configuration for lsp servers
          servers = {},
        },
      },

      -- Signature help configuration
      signature_help = {
        -- Auto trigger signature help
        auto = true,
      },

      -- Attach services for each per modes
      attach = {
        -- Insert mode service initialization
        insert_mode = function()
          if vim.bo.buftype == "nofile" then
            return
          end
          do
            local service = ix.get_completion_service({ recreate = true })
            service:register_source(ix.source.completion.github(), { group = 1 })
            service:register_source(ix.source.completion.calc(), { group = 1 })
            service:register_source(ix.source.completion.emoji(), { group = 1 })
            service:register_source(ix.source.completion.path(), { group = 10 })
            ix.source.completion.attach_lsp(service, {
              default = {
                group = 20,
                priority = 1,
              },
              servers = {},
            })
            service:register_source(ix.source.completion.buffer(), { group = 30, dedup = true })
          end
          do
            local service = ix.get_signature_help_service({ recreate = true })
            ix.source.signature_help.attach_lsp(service)
          end
        end,

        -- Cmdline mode service initialization
        cmdline_mode = function()
          local service = ix.get_completion_service({ recreate = true })
          if vim.tbl_contains({ "/", "?" }, vim.fn.getcmdtype()) then
            service:register_source(ix.source.completion.buffer(), { group = 1 })
          elseif vim.fn.getcmdtype() == ":" then
            service:register_source(ix.source.completion.path(), { group = 1 })
            service:register_source(ix.source.completion.cmdline(), { group = 10 })
          end
        end,
      },
    })

    -- Setup keymaps (Using `ix.charmap`; See below).
    do
      -- Selection (mapped to your <C-a> and <C-e>)
      vim.keymap.set({ "i", "c" }, "<C-a>", ix.action.completion.select_prev())
      vim.keymap.set({ "i", "c" }, "<C-e>", ix.action.completion.select_next())

      -- Documentation scrolling
      ix.charmap.set({ "i", "c", "s" }, "<C-S-a>", ix.action.scroll(0 - 3))
      ix.charmap.set({ "i", "c", "s" }, "<C-S-e>", ix.action.scroll(0 + 3))

      -- Snippet navigation
      vim.keymap.set({ "i", "s" }, "<C-i>", function()
        if vim.snippet.active({ direction = 1 }) then
          return vim.snippet.jump(1)
        end
      end)
      vim.keymap.set({ "i", "s" }, "<C-h>", function()
        if vim.snippet.active({ direction = -1 }) then
          return vim.snippet.jump(-1)
        end
      end)

      -- Accept completion
      ix.charmap.set({ "i" }, "<C-CR>", ix.action.completion.commit({ select_first = true }))
      ix.charmap.set({ "c" }, "<C-CR>", ix.action.completion.commit_cmdline())

      -- Hide/close completion
      ix.charmap.set({ "i", "c" }, "<C-BS>", ix.action.completion.close())

      -- Trigger completion manually
      ix.charmap.set({ "i", "c" }, "<C-Space>", ix.action.completion.complete())

      -- signature_help
      ix.charmap.set({ "i", "s" }, "<C-o>", ix.action.signature_help.trigger_or_close())
      ix.charmap.set({ "i", "s" }, "<C-j>", ix.action.signature_help.select_next())
    end
  end,
}
