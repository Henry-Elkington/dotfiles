if vim.g.neovide then
  vim.opt.guifont = { "Source Code Pro", "h12" } -- not set
  -- system clipboard

  -- vim.keymap.set("n", "<c-c>", ':+y<CR>', { silent = true })
  -- vim.keymap.set("v", "<c-c>", ":+y<CR>", { silent = true })
  -- vim.keymap.set("n", "<c-v>", ":+p<CR>", { silent = true })

  -- inoremap <c-v> <c-r>+
  -- cnoremap <c-v> <c-r>+
  -- " use <c-r> to insert original character without triggering things like auto-pairs
  -- inoremap <c-r> <c-v>

  vim.g.neovide_position_animation_length = 0.15
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_floating_opacity = 1.0 -- 0.7
  vim.g.neovide_floating_blur = false -- true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_debug_renderer = false
  vim.g.neovide_profiler = false
  vim.g.neovide_underline_automatic_scaling = false

  vim.g.neovide_transparency = 1.0
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_fullscreen = false
  vim.g.neovide_iso_layout = false
  vim.g.neovide_refresh_rate = 144 -- 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_no_idle = false
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_remember_window_position = true
  vim.g.neovide_hide_mouse_when_typing = true -- false
  vim.g.neovide_touch_deadzone = 6.0
  vim.g.neovide_touch_drag_timeout = 0.17
  vim.g.neovide_background_color = ""
  vim.g.neovide_confirm_quit = true

  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animation_length = 0.06 -- 0.05
  vim.g.neovide_cursor_distance_length_adjust = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = false -- true
  vim.g.neovide_cursor_trail_size = 0.3 -- 0.7
  vim.g.neovide_cursor_unfocused_outline_width = 1.0 / 8.0
  vim.g.neovide_cursor_vfx_mode = 'wireframe'
  vim.g.neovide_cursor_vfx_opacity = 80.0 -- 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_density = 7.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
