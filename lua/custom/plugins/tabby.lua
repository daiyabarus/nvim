-- custom/plugins/tabby

local colors = require("base46").get_theme_tb "base_30"
local custom_colors = require "custom.colors"
local filename = require "tabby.module.filename"
local util = require "tabby.util"

local function tab_label(tabid, active)
  local icon = active and "" or ""
  local number = vim.api.nvim_tabpage_get_number(tabid)
  return string.format(" %s %d ", icon, number)
end

local function tab_label_no_fallback(tabid, active)
  local icon = active and "" or ""
  local fallback = function()
    return ""
  end
  local number = vim.api.nvim_tabpage_get_number(tabid)
  local name = util.get_tab_name(tabid, fallback)
  if name == "" then
    return string.format(" %s %d ", icon, number)
  end
  return string.format(" %s %d %s ", icon, number, name)
end

local function win_label(winid, top)
  return string.format(" %s ", filename.relative(winid))
end

local tabline = {
  hl = { fg = colors.black, bg = colors.black },
  layout = "active_wins_at_tail",
  head = {
    { "  ", hl = { fg = colors.black, bg = custom_colors.blue } },
    { "█", hl = { fg = colors.grey, bg = colors.grey } },
  },
  active_tab = {
    label = function(tabid)
      return {
        tab_label(tabid, true),
        hl = { fg = colors.black, bg = custom_colors.blue, style = "bold" },
      }
    end,
    left_sep = { " ", hl = { fg = colors.black, bg = colors.black } },
    right_sep = { "", hl = { fg = colors.black, bg = colors.black } },
  },
  inactive_tab = {
    label = function(tabid)
      return {
        tab_label(tabid),
        hl = { fg = colors.white, bg = custom_colors.lightbg, style = "bold" },
      }
    end,
    left_sep = { " ", hl = { fg = colors.black, bg = colors.black } },
    right_sep = { "", hl = { fg = colors.black, bg = colors.black } },
  },
  top_win = {
    label = function(winid)
      return {
        win_label(winid, true),
        hl = {
          fg = colors.black,
          bg = custom_colors.green,
        },
      }
    end,
    left_sep = { "", hl = { fg = colors.black, bg = colors.black } },
    right_sep = { " ", hl = { fg = colors.black, bg = colors.black } },
  },
  win = {
    label = function(winid)
      return {
        win_label(winid),
        hl = { fg = colors.white, bg = custom_colors.lightbg, style = "bold" },
      }
    end,
    left_sep = { "", hl = { fg = colors.black, bg = colors.black } },
    right_sep = { " ", hl = { fg = colors.black, bg = colors.black } },
  },
  tail = {
    { "█", hl = { fg = colors.grey, bg = colors.grey } },
    { "  ", hl = { fg = colors.black, bg = custom_colors.green } },
  },
}

require("tabby").setup {
  tabline = tabline,
}
