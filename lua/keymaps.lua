local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        if opts.desc then
            opts.desc = "keymaps.lua: " .. opts.desc
        end
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<leader>bn", ":bn<CR>", { noremap = true, silent = true })
map("n", "<leader>bp", ":bp<CR>", { noremap = true, silent = true })
