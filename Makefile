# Makefile
PANDOC ?= pandoc

CONTENT_DIR := content
THEME_DIR   := theme
ASSETS_DIR  := assets
OUT_DIR     := site

MD_SRC   := $(wildcard $(CONTENT_DIR)/*.md)
HTML_OUT := $(patsubst $(CONTENT_DIR)/%.md,$(OUT_DIR)/%.html,$(MD_SRC))

PANDOC_FLAGS := \
  --from=markdown \
  --to=html5 \
  --standalone \
  --template=$(THEME_DIR)/template.html \
  --include-before-body=$(THEME_DIR)/nav.html \
  --css=assets/style.css \
  --toc --toc-depth=2 \
  --metadata=lang:en

.PHONY: build clean serve

build: $(OUT_DIR)/assets $(HTML_OUT)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(OUT_DIR)/assets: | $(OUT_DIR)
	rm -rf $(OUT_DIR)/assets
	cp -r $(ASSETS_DIR) $(OUT_DIR)/assets

$(OUT_DIR)/%.html: $(CONTENT_DIR)/%.md | $(OUT_DIR)
	$(PANDOC) $(PANDOC_FLAGS) --metadata=pagetitle:$* -o $@ $<

clean:
	rm -rf $(OUT_DIR)

serve: build
	python3 -m http.server --directory $(OUT_DIR) 8000
