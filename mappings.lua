---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"]          = { ":",                                                            "enter command mode", opts = { nowait = true } },
    ["<leader>bb"] = { "<cmd>tabnew<cr>",                                              desc = "New tab" },
    ["<leader>bn"] = { "<cmd>tabNext<cr>",                                              desc = "Tab next" },
    ["<leader>i"]      = { ":UndotreeToggle<CR>",                                          silent = true, desc = "UNDOTREE" },
    ["<leader>x"]  = { ":bp<bar>sp<bar>bn<bar>bd!<Enter>",                             desc = "close file with buffer" },
    ["<leader>ft"] = { ":TodoTelescope<CR>",                                           desc = "todo_search" },
    ["<leader>fp"] = { ":lua require('telescope').extensions.projects.projects()<CR>", desc = "project search" },
    ["<F2>"]       = { ":Repl bpython<CR>",                                            desc = "IPYTHON" },
    ["ff"]         = { ":ReplRunCell<CR>",                                             desc = "Run cell" },
    ["<leader>rl"] = { "<Plug>ReplSendLine",                                           desc = "send line" },
    ["<C-c>"]      = { '"+y',                                                          desc = "copy to global buffer" },
    ["<p>"]        = { '"+p',                                                          desc = "paste from global buffer" },
    ["<m-o>"]      = { "<cmd>BrowseBookmarks<cr>",                                     desc = "browse_bookmarks" },
    ["mm"]         = { "<cmd>BrowseInputSearch<cr>",                                   desc = "google search" },
    ["<leader>q"]  = { ":q<cr>",                                                       desc = "close window" },
    ["<leader>fw"] = { ":Telescope live_grep<cr>",                                     desc = "find word" },
    ["ga"]         = { ":EasyAlign<cr>",                                               desc = "EasyAlign" },
    ["<m-Left>"]   = { ":vertical resize +1<cr>",                                      desc = "resize window more" },
    ["<m-Right>"]  = { ":vertical resize -1<cr>",                                      desc = "resize window less" },
    ["<m-Up>"]     = { ":resize +1<cr>",                                               desc = "resize window up" },
    ["<m-Down>"]   = { ":resize +1<cr>",                                               desc = "resize window down" },
    ["<leader>fp"]   = { ":SearchSession<cr>",                                         desc = "SearchSession" },
    ["<leader>fs"]   = { ":SessionSave<cr>",                                           desc = "Save session" },
  },
  v = {
    ["ga"] = { ":EasyAlign<cr>", desc = "EasyAlign" },
  }
}

-- more keybinds!

return M
