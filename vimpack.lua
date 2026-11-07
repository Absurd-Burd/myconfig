vim.pack.add({
  "https://github.com/sphamba/smear-cursor.nvim",
})

require('smear_cursor').setup({
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
})




--[[What the shape options do:

trailing_exponent (default 2): controls whether the smear’s middle points sit closer to the head or the tail; values above 1 put them closer to the head. Raising it makes the body sit near the cursor and the tail thin out, which gives the comet shape. Try 3 to 5. 
github
volume_reduction_exponent (default 0.3): ranges from 0 (no reduction) to 1 (full reduction). Higher values make the smear thinner as it stretches. 
github
minimum_volume_factor (default 0.7): 0 means no limit on how thin it can get, and 1 means no reduction at all. Lowering it lets the tail get much thinner. 
github
max_length (default 25): caps the maximum smear length. Lower it if long jumps leave a streak that’s too big. 
github

Tuning:

Tail too faint or short: lower trailing_stiffness to about 0.3. The cost is a slightly longer trail.
Still too thick or blobby: push volume_reduction_exponent toward 1 and minimum_volume_factor toward 0.1.
Too long for your taste: raise trailing_stiffness back toward 0.55 and lower max_length to about 15.

A thinner cursor also makes a thinner smear, because the smear’s width follows the cursor’s size. Many people switch to a vertical bar for this, with vertical_bar_cursor = true and matrix_pixel_threshold = 0.3. That changes how your cursor looks, so I’d try the settings above first.

]]--
