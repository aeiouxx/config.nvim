return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      enabled = true,
      snippet_engine = "luasnip",
      languages = {
        javascript = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
      },
    })
  end,
  keys = {
    { "<leader>df", function() require("neogen").generate({ type = "func" }) end,  desc = "[D]oc: [F]unction annotation" },
    { "<leader>dt", function() require("neogen").generate({ type = "type" }) end,  desc = "[D]oc: [T]ypedef" },
    { "<leader>dc", function() require("neogen").generate({ type = "class" }) end, desc = "[D]oc: [C]lass annotation" },
    { "<leader>dn", function() require("neogen").generate({ type = "file" }) end,  desc = "[D]oc: [N]amespace/ File annotation" },
  },
  cmd = "Neogen",
}
