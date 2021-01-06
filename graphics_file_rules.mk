MGB_DIR := graphics/mobile_adapter_gb
NUM_TILES := -num_tiles

include $(MGB_DIR)/mgb.mk

gfx_clean: mgb_clean

gfx_build: mgb_build