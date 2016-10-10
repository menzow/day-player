PLUGIN_PATH := ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/
PLUGIN_DIR := Day\ Player.sketchplugin
PLUGIN_FULL_PATH := $(PLUGIN_PATH)$(PLUGIN_DIR)
PLUGIN_NAME := Day Player

SRC_DIR := ./src
RESOURCES_DIR := ./resources
LICENSE := LICENSE.md
MANIFEST := manifest.json

clean:
	@rm -rf $(PLUGIN_PATH)$(PLUGIN_DIR)

install:
	@make clean
	@echo "Installing $(PLUGIN_NAME)..."
	@mkdir $(PLUGIN_FULL_PATH)
	@mkdir $(PLUGIN_FULL_PATH)/Contents
	@cp $(LICENSE) $(PLUGIN_PATH)$(PLUGIN_DIR)/Contents/$(LICENSE)
	@cp -r $(RESOURCES_DIR) $(PLUGIN_PATH)$(PLUGIN_DIR)/Contents/Resources
	@cp -r $(SRC_DIR) $(PLUGIN_PATH)$(PLUGIN_DIR)/Contents/Sketch
	@cp -r $(MANIFEST) $(PLUGIN_PATH)$(PLUGIN_DIR)/Contents/Sketch/$(MANIFEST)
	@echo "$(PLUGIN_NAME) installed"
