return {
  "Senal-D-A-Gunaratna/hyprfade.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    opacity = 1,
    opacity_inactive = 0.75,
    term_names = {
      "alacritty", "foot", "ghostty", "kitty", "wezterm",
    },
  },
  keys = {
    { "<leader>uo", "<cmd>HyprfadeToggle<cr>", desc = "Toggle window opacity" },
  },
}
