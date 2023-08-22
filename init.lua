-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
 vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixNavigatorCommentString", { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "-- %s"
  end,
  pattern = { "inc", "data" },
})

vim.bo.commentstring = '-- %s'

local bookmarks = {
    ['work'] = {
        "https://srv.rfdyn.ru",
        "https://mail.rfdyn.ru/#1",
        "https://rchat.rfdyn.ru/home",
        "https://support.rfdyn.ru/index.php",
        "https://srv.rfdyn.ru/releases/releases_dir.php",
        "https://petrowiki.spe.org/PetroWiki" },
    ['education'] = {
        "https://stepik.org/",
        "https://baguzin.ru/wp/",
        "https://pbpython.com/index.html",
        "https://github.com/rockerBOO/awesome-neovim",
        "https://doc.rust-lang.org/book/",
        "https://aur.archlinux.org/packages/",
        "https://news.ycombinator.com/" },
}

local function command(name, rhs, opts)
    opts = opts or {}
    vim.api.nvim_create_user_command(name, rhs, opts)
end

command("BrowseInputSearch", function()
    require('browse').input_search()
end, {})

command("Browse", function()
    browse.browse { bookmarks = bookmarks }
end, {})
command("BrowseBookmarks", function()
    require('browse').open_bookmarks({ bookmarks = bookmarks })
end, {})
command("BrowseDevdocsSearch", function()
    browse.devdocs.search()
end, {})
command("BrowseDevdocsFiletypeSearch", function()
    browse.devdocs.search_with_filetype()
end, {})
command("BrowseMdnSearch", function()
    browse.mdn.search()
end, {})

return {
    --WARN: TODO comments что то не так с цветами
    "folke/todo-comments.nvim",
    {
      signs = true,      -- show icons in the signs column
      sign_priority = 8, -- sign priority
      -- keywords recognized as todo comments
      keywords = {
        FIX = {
          icon = " ",                              -- icon used for the sign, and in search results
          color = "error",                            -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      gui_style = {
        fg = "NONE",         -- The gui style to use for the fg highlight group.
        bg = "BOLD",         -- The gui style to use for the bg highlight group.
      },
      merge_keywords = true, -- when true, custom keywords will be merged with the defaults
      -- highlighting of the line containing the todo comment
      -- * before: highlights before the keyword (typically comment characters)
      -- * keyword: highlights of the keyword
      -- * after: highlights after the keyword (todo text)
      highlight = {
        multiline = true,                -- enable multine todo comments
        multiline_pattern = "^.",        -- lua pattern to match the next multiline from the start of the matched keyword
        multiline_context = 10,          -- extra lines that will be re-evaluated when changing a line
        before = "",                     -- "fg" or "bg" or empty
        keyword = "wide",                -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
        after = "fg",                    -- "fg" or "bg" or empty
        pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
        comments_only = true,            -- uses treesitter to match keywords in comments only
        max_line_len = 400,              -- ignore lines longer than this
        exclude = {},                    -- list of file types to exclude highlighting
      },
      -- list of named colors where we try to extract the guifg from the
      -- list of highlight groups or use the hex color if hl not found as a fallback
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" }
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    },
}

