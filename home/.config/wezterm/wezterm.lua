local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- High-contrast, low-fatigue color palette override
local colors = {
  bg       = "#1e222a", -- Soft deep charcoal (prevents pupil dilation stress)
  fg       = "#e6e8eb", -- Off-white/light gray (high contrast text without the glare of pure white)
  green    = "#87af87", -- Muted sage green (easiest color for human eye lenses to focus on)
  blue     = "#87afdf", -- Desaturated sky blue (low cognitive processing load)
  yellow   = "#dfaf87", -- Warm ochre/sand (soft alert color, replaces harsh yellow)
  orange   = "#d7875f", -- Terracotta accent (used sparingly for critical elements)
  comment  = "#6c7a89", -- Balanced mid-gray (readable but sits comfortably in the background)
  visual   = "#2e3842", -- Muted contrast layer for selections
}

-- Apply highlight groups safely
local function set_hl(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- Editor Base Interface
set_hl("Normal",       { fg = colors.fg, bg = colors.bg })
set_hl("NormalFloat",  { fg = colors.fg, bg = colors.bg })
set_hl("Visual",       { bg = colors.visual })
set_hl("Comment",      { fg = colors.comment, italic = true })

-- UI Typography Elements (Crucial for reduced cognitive load)
set_hl("LineNr",       { fg = colors.comment })
set_hl("CursorLineNr", { fg = colors.blue, bold = true }) -- Clearly highlights active line
set_hl("Search",       { fg = colors.bg, bg = colors.yellow }) 
set_hl("IncSearch",    { fg = colors.bg, bg = colors.orange })

-- Syntax Highlights (Optimized to prevent "rainbow code" cognitive fatigue)
set_hl("Keyword",      { fg = colors.blue, bold = true })
set_hl("Statement",    { fg = colors.blue })
set_hl("Function",     { fg = colors.green })
set_hl("String",       { fg = colors.yellow })
set_hl("Number",       { fg = colors.orange })
set_hl("Type",         { fg = colors.green, bold = true })
set_hl("Special",      { fg = colors.orange })

-- Diagnostics & Warnings (Low-stress alert triggers)
set_hl("DiagnosticError", { fg = colors.orange })
set_hl("DiagnosticWarn",  { fg = colors.yellow })
set_hl("DiagnosticInfo",  { fg = colors.blue })
set_hl("DiagnosticHint",  { fg = colors.green })

return config
