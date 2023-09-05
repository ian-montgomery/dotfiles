-- Pull in the wezterm API
local wezterm = require 'wezterm'
local colors = require('lua/rose-pine').colors()
local window_frame = require('lua/rose-pine').window_frame()

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font = wezterm.font 'MesloLGL Nerd Font'
config.colors = colors
config.window_frame = window_frame

-- and finally, return the configuration to wezterm
return config
