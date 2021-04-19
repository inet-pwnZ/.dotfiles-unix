local gitsigns = require("gitsigns")

local signs = {
    add = {hl = "GitSignsAdd", text = "▌", numhl = "GitSignsAdd", linehl = "GitSignsAddLn"},
    change = {hl = "GitSignsChange", text = "▌", numhl = "GitSignsChange", linehl = "GitSignsChangeLn"},
    delete = {hl = "GitSignsDelete", text = "▌", numhl = "GitSignsDelete", linehl = "GitSignsDeleteLn"},
    topdelete = {hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn"},
    changedelete = {hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn"}
}

gitsigns.setup {
    signs = signs,
    numhl = true,
    linehl = false,
    keymaps = {
        -- Default keymap options
        noremap = true,
        buffer = true,
        ["n ]c"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
        ["n [c"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
        ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
        ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
        ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
        ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
        ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>'
    },
    watch_index = {
        interval = 100
    },
    sign_priority = 5,
    status_formatter = nil, -- Use default
    use_decoration_api = true,
    use_internal_diff = true -- If luajit is present
}

-- refresh for hotreload
gitsigns.refresh()
