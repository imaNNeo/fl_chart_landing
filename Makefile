checkoutToPR:
	git fetch origin pull/$(id)/head:pr-$(id) --force; \
	git checkout pr-$(id)
