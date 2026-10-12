### STEAL THESE PORTS

The tree is to be used to maintain and eventually migrate ports
into the official OpenBSD ports tree. This means that ports in
this tree are actively worked on and may not always build, though
of course it's best to aim for building ports.

These are some work-in-progress ports I'm working on. They're here
so that I (and you) can easily manage new ports that I haven't
submitted yet. Ports here can be at any point along the
development path, so please look at a port before blindly issuing
`make install`.

Steal them. Run them on your machine. Submit them to ports@. This
repository should always be as empty as possible.

One way to use this tree is to clone it into your `/usr/ports/`
directory and adjust `PORTSDIR_PATH` accordingly in
`/etc/mk.conf`:

	PORTSDIR_PATH=${PORTSDIR}:$(PORTSDIR)/openbsd-wip:${PORTSDIR}/mystuff

In the above example, a port with version 1 in OpenBSD ports tree,
version 2 in `openbsd-wip`. Then, the version in OpenBSD ports
tree will be picked up before the version in `openbsd-wip`. This
is important if you are building packages using `dpb`. The order
of `PORTSDIR_PATH` is important.
