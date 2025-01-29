all: auto-apt-proxy.1

auto-apt-proxy.1: README.md
	pandoc --standalone --from markdown --to man -o $@ $^

clean:
	$(RM) auto-apt-proxy.1

.PHONY: check test

test: check

check:
	-shellcheck --shell dash auto-apt-proxy

