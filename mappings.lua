---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<C-i>"] = { ":UndotreeToggle<CR>", silent = true, desc = "UNDOTREE" },
    ["<leader>x"] = { ":bp<bar>sp<bar>bn<bar>bd!<Enter>", desc = "close file with buffer" },
    ["<leader>ft"] = { ":TodoTelescope<CR>", desc = "todo_search" },
    ["<leader>fp"] = { ":lua require('telescope').extensions.projects.projects()<CR>", desc = "project search" },
    ["<F2>"] = { ":Repl ipython<CR>", desc = "IPYTHON" },
    ["ff"] = { ":ReplRunCell<CR>", desc = "Run cell" },
    ["<leader>r"] = { "<Plug>ReplSendLine", desc = "send line" },
    ["<C-C>"] = { '"+y', desc = "copy to global buffer" },
    ["<p>"] = { '"+p', desc = "paste from global buffer" },
    ["<m-o>"] = { "<cmd>BrowseBookmarks<cr>", desc = "browse_bookmarks" },
    ["<leader>s"] = { "<cmd>BrowseInputSearch<cr>", desc = "google search" },
    ["<leader>q"] = { ":q<cr>", desc = "close window" },
  },
}

-- more keybinds!

return M
