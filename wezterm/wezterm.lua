-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()


config.color_scheme = "HaX0R_BLUE"

config.keys = {
  -- Tabs
  {
    key = "1",
    mods = "ALT",
    action = wezterm.action.ActivateTab(0),
  },
  {
    key = "2",
    mods = "ALT",
    action = wezterm.action.ActivateTab(1),
  },
  {
    key = "3",
    mods = "ALT",
    action = wezterm.action.ActivateTab(2),
  },
  {
    key = "4",
    mods = "ALT",
    action = wezterm.action.ActivateTab(3),
  },
  {
    key = "5",
    mods = "ALT",
    action = wezterm.action.ActivateTab(4),
  },
  {
    key = "6",
    mods = "ALT",
    action = wezterm.action.ActivateTab(5),
  },
  {
    key = "7",
    mods = "ALT",
    action = wezterm.action.ActivateTab(6),
  },
  {
    key = "8",
    mods = "ALT",
    action = wezterm.action.ActivateTab(7),
  },
  {
    key = "9",
    mods = "ALT",
    action = wezterm.action.ActivateTab(8),
  },
  {
    key = "0",
    mods = "ALT",
    action = wezterm.action.ActivateTab(9),
  },
  -- Panes
  {
    key = "|",
    mods = "SHIFT|ALT",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = '"',
    mods = "SHIFT|ALT",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "w",
    mods = "SHIFT|ALT",
    action = wezterm.action.CloseCurrentPane({ confirm = true }),
  },
  {
    key = "LeftArrow",
    mods = "SHIFT|ALT",
    action = wezterm.action.ActivatePaneDirection("Left"),
  },
  {
    key = "RightArrow",
    mods = "SHIFT|ALT",
    action = wezterm.action.ActivatePaneDirection("Right"),
  },
  {
    key = "UpArrow",
    mods = "SHIFT|ALT",
    action = wezterm.action.ActivatePaneDirection("Up"),
  },
  {
    key = "DownArrow",
    mods = "SHIFT|ALT",
    action = wezterm.action.ActivatePaneDirection("Down"),
  },
  {
    key = "Z",
    mods = "SHIFT|ALT",
    action = wezterm.action.TogglePaneZoomState,
  },
  -- full screen
  {
    key = "F11",
    action = wezterm.action.ToggleFullScreen,
  },
}

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- background
config.background = {
  {
    source = {
      Color = "#010921",
    },
    width = "100%",
    height = "100%",
    repeat_x = "NoRepeat",
    opacity = 0.95,
  },
}

-- and finally, return the configuration to wezterm
return config
