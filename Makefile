all: auto-apt-proxy.1

auto-apt-proxy.1: auto-apt-proxy.pod
	pod2man --verbose --name auto-apt-proxy -c '' -r '' --utf8 $< $@ || ($(RM) $@; false)

auto-apt-proxy.pod: README.md
	sed -e 's/^#/=head1/; s|\*\*\([^\*]*\)\*\*|B<\1>|g; s|\*\([^\*]*\)\*|I<\1>|g' $< > $@ || ($(RM) $@; false)

clean:
	$(RM) auto-apt-proxy.1 auto-apt-proxy.pod

.PHONY: check test

test: check

check:
	-shellcheck --shell dash auto-apt-proxy

