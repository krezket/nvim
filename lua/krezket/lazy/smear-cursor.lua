return {

  "sphamba/smear-cursor.nvim",
  config = function()
    require("smear_cursor").setup({
      stiffness = 0.9, -- Adjusts smoothness (0 to 1)
      smear_within_line = false, -- Disable within-line animation
      smear_to_neighbor = false, -- Disable for neighbor lines
    })
  end,
}

