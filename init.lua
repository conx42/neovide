require("josean.core")
require("josean.lazy")
require("bluloco").setup({
  style = "dark", -- "auto" | "dark" | "light"
  transparent = false,
  italics = true,
  terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
  guicursor = true,
})
-- for auto-format start
-- https://github.com/lukas-reineke/indent-blankline.nvim
-- require("ibl").setup()
local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup({ indent = { highlight = highlight } })
-- for auto-format end
-- for guess-indent start
-- This is the default configuration
require("guess-indent").setup({
  auto_cmd = true, -- Set to false to disable automatic execution
  override_editorconfig = true, -- Set to true to override settings set by .editorconfig
  filetype_exclude = { -- A list of filetypes for which the auto command gets disabled
    "netrw",
    "tutor",
    "java",
  },
  buftype_exclude = { -- A list of buffer types for which the auto command gets disabled
    "help",
    "nofile",
    "terminal",
    "prompt",
  },
})
-- for guess-indent end
vim.opt.termguicolors = true
vim.cmd("colorscheme bluloco")
vim.o.guifont = "MonoLisa:h12" -- text below applies for VimScript
vim.cmd("hi Cursor guifg=#17c700 guibg=#17c700")
vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- powershell terminal default
vim.cmd("set shell=pwsh.exe")
