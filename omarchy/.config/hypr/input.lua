-- https://omarchy.org/manual/keyboard-mouse-trackpad/
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
  input = {
    kb_layout = "gb",
    kb_options = "compose:ralt",
    repeat_rate = 40,
    repeat_delay = 600,
    numlock_by_default = true,
    accel_profile = "flat",
    sensitivity = 0.2,
  },
})

o.window("com.mitchellh.ghostty", { scroll_mouse = 3 })
