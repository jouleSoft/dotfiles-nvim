return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    local on_attach = function(_, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      opts.desc = "Go to declaration"
      keymap.set("n", "lD", vim.lsp.buf.declaration, opts)

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "la", vim.lsp.buf.code_action, opts)

      opts.desc = "Show line diagnostics"
      keymap.set("n", "le", vim.diagnostic.open_float, opts)

      opts.desc = "Smart rename"
      keymap.set("n", "lr", vim.lsp.buf.rename, opts)

      opts.desc = "Restart LSP"
      keymap.set("n", "ls", ":LspRestart<CR>", opts)

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "lh", vim.diagnostic.goto_prev, opts)

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "ll", vim.diagnostic.goto_next, opts)

      opts.desc = "Find LSP references"
      keymap.set("n", "lfr", ":Telescope lsp_references<CR>", opts)

      opts.desc = "Find LSP definitions"
      keymap.set("n", "lfd", ":Telescope lsp_definitions<CR>", opts)

      opts.desc = "Find LSP implementations"
      keymap.set("n", "lfi", ":Telescope lsp_implementations<CR>", opts)

      opts.desc = "Find LSP type definitions"
      keymap.set("n", "lft", ":Telescope lsp_type_definitions<CR>", opts)

      opts.desc = "Find buffer diagnostics"
      keymap.set("n", "lf.", ":Telescope diagnostics bufnr=0<CR>", opts)

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    local signs = {
      Error = " ",
      Warn = " ",
      Hint = "󰠠 ",
      Info = " ",
    }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- Config común para todos los LSP.
    vim.lsp.config("*", {
      capabilities = capabilities,
      on_attach = on_attach,
    })

    vim.lsp.config("emmet_ls", {
      filetypes = {
        "html",
        "typescriptreact",
        "javascriptreact",
        "css",
        "sass",
        "scss",
        "less",
        "svelte",
      },
    })

    vim.lsp.config("pyright", {
      filetypes = { "python" },
    })

    vim.lsp.config("bashls", {})

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    vim.lsp.enable({
      "emmet_ls",
      "pyright",
      "bashls",
      "lua_ls",
    })
  end,
}
