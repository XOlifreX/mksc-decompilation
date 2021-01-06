MGB_INTRO_DIR := $(MGB_DIR)/intro

include $(MGB_INTRO_DIR)/intro.mk

mgb_clean: mgb_intro_clean

mgb_build: mgb_intro_build