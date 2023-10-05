-- return {
--   -- "uloco/bluloco.nvim",
--   -- lazy = false,
--   -- priority = 1000,
--   -- dependencies = { "rktjmp/lush.nvim" },
--   -- config = function()
--   --   -- your optional config goes here, see below.
--   -- end,
--   -- using packer.nvim
return {
  "nmac427/guess-indent.nvim",
  config = function()
    require("guess-indent").setup({})
  end,
}
