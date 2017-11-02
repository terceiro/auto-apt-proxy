# NAME

auto-apt-proxy - autodetect common APT proxy setups

# USAGE

**auto-apt-proxy**

**auto-apt-proxy** *[COMMAND [ARGS ...]]*

# DESCRIPTION

**auto-apt-proxy** is an APT proxy autodetector, and detects common setups by
checking localhost, your gateway and other "interesting" machines on your
network for well-known APT proxies such as apt-cacher-ng and others.

When called with no arguments, **auto-apt-proxy** simply prints the address of
a detected process to the standard output. This package install an APT
configuration file that makes APT use **auto-apt-proxy** to detect a proxy on
every invocation of APT.

When called with arguments, they are assumed to be a command. Such command will
be executed with the common environment variables used for specifying HTTP
proxies (*http_proxy*, *HTTP_PROXY*) set to the detected proxy. This way the
executed command will be able to transparently use any detected APT proxy. Note
that for this to work, any programs invoked by the given command must have
their own support for detecting HTTP proxies from environment variables, and
for using them.

# EXAMPLES

$ **auto-apt-proxy**

Just prints the detected APT proxy

$ **auto-apt-proxy** debootstrap sid /my/chroot

Creates a new Debian *chroot* downloading packages from the local proxy.

# COPYRIGHT

Copyright (C) 2016-2017 Antonio Terceiro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
