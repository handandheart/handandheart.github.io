RUBY_BIN := /opt/homebrew/opt/ruby/bin
BUNDLE := $(RUBY_BIN)/bundle

.PHONY: install serve build clean

install:
	$(BUNDLE) install

serve:
	./bin/serve

build:
	$(BUNDLE) exec jekyll build

clean:
	rm -rf _site .jekyll-cache
