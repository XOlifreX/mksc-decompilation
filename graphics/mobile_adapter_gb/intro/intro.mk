MGB_INTRO_FILES := $(MGB_INTRO_DIR)/*.4bpp $(MGB_INTRO_DIR)/*.lz $(MGB_INTRO_DIR)/*.gbapal

# Prepare
mgb_intro_clean:
	@$(RM) $(MGB_INTRO_FILES)

# Build
mgb_intro_build:
	$(GBAGFX) $(MGB_INTRO_DIR)/mgb_intro_logo.png $(MGB_INTRO_DIR)/mgb_intro_logo.4bpp $(NUM_TILES) 96
	$(GBAGFX) $(MGB_INTRO_DIR)/mgb_intro_logo.4bpp $(MGB_INTRO_DIR)/mgb_intro_logo.lz
	$(GBAGFX) $(MGB_INTRO_DIR)/mgb_intro_logo.pal $(MGB_INTRO_DIR)/mgb_intro_logo.gbapal