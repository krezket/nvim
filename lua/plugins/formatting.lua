return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  -- ADD THIS KEYS BLOCK RIGHT HERE:
  keys = {
    {
      "=",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = { "n", "v" }, -- Works in both Normal and Visual mode!
      desc = "Format buffer or selection",
    },
  },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettierd", "prettier", stop_after_first = true },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    })
  end,
}
