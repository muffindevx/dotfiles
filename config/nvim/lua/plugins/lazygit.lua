return {
    "kdheepak/lazygit.nvim",
    config = function()
        vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', {})
    end
}
