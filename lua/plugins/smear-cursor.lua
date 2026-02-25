-- return {
--   "sphamba/smear-cursor.nvim",
--   event = "VeryLazy",
--   opts = {
--     -- cursor_color = "#00fa9a", -- tropical apple green
--     smear_length = 14, -- longer trail
--     smear_fade_time = 250, -- slower fade
--     smear_easing = "inOutQuad", -- smoother easing
--     keep_trail_on_line_change = true,
--   },
-- }
return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  opts = {
    -- HEARTBEAT / PULSE SETTINGS
    -- Lower damping causes the "bounce" (the pulse)
    damping = 0.6, -- Default is 0.85; lower = more "heartbeat" bounce
    stiffness = 0.9, -- High stiffness makes the pulse snappy/fast

    -- TRAIL OPTIMIZATION (Preventing Lag)
    smear_length = 8, -- Keep it shorter to make the "pulse" look tighter
    smear_fade_time = 150, -- Fast fade makes the heartbeat feel electrical
    smear_easing = "outExpo", -- Snaps to the end for a sharp heartbeat finish
    keep_trail_on_line_change = true,

    -- VISUALS
    cursor_color = "#d1d3f0", -- Your tropical green
    smear_to_color = "none", -- Fades into the background

    -- PERFORMANCE GUARD
    min_fractional_delta = 2, -- Ignores tiny movements to save CPU
    hide_target_hack = true, -- Essential for lag-free rendering in most terminals
  },
}
