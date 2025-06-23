vim.api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function()
        vim.bo.expandtab = false
    end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ocaml",
  callback = function()
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
      vim.opt_local.softtabstop = 2
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "haskell",
  callback = function()
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
      vim.opt_local.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>qf", function() vim.lsp.buf.code_action() end, opts)
    end
})
