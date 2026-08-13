.PHONY: install update clean restow

STOW := stow
BREW := brew
PACKAGES := .

BREWFILE := Brewfile


install:
	@if command -v brew >/dev/null 2>&1; then \
		$(BREW) bundle --file="$(CURDIR)/$(BREWFILE)"; \
	else \
		echo "Homebrew not found, skipping brew bundle"; \
	fi
	stow --restow --target="$(HOME)" .

install:
	$(STOW) --restow --target="$(HOME)" $(PACKAGES)

restow:
	$(STOW) --restow --target="$(HOME)" $(PACKAGES)

update:
	git pull --rebase
	$(STOW) --restow --target="$(HOME)" $(PACKAGES)

clean:
	$(STOW) --delete --target="$(HOME)" $(PACKAGES)
