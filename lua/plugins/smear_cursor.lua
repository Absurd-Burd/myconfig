return {
  "sphamba/smear-cursor.nvim",
  opts = {	
    legacy_computing_symbols_support = true,  -- thin shapes need the finer glyphs

  -- Dynamics: fast head, slightly slower tail so there's a streak to taper
    stiffness = 0.8,
    trailing_stiffness = 0.4,
  damping = 0.95,
  distance_stop_animating = 0.5,

  -- Shape: thick at the cursor, tapering to a thin tail
  trailing_exponent = 4,
  volume_reduction_exponent = 0.7,
  minimum_volume_factor = 0.2,

  -- Insert mode
  stiffness_insert_mode = 0.7,
  trailing_stiffness_insert_mode = 0.5,
  damping_insert_mode = 0.95,
},
}



