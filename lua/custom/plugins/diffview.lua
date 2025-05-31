return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewFileHistory",
  },
  config = function()
    require("diffview").setup({})
  end,
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>",        desc = "[G]it: [D]iffview Open" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>",       desc = "[G]it: [D]iffview Close" },
    { "<leader>gf", "<cmd>DiffviewFocusFiles<cr>",  desc = "[G]it: [F]ocus Files" },
    { "<leader>gt", "<cmd>DiffviewToggleFiles<cr>", desc = "[G]it: [T]oggle Files" },
    { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "[G]it: File [H]istory" },
  },
}
