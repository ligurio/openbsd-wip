### openbsd-wip - work in progress ports for OpenBSD

This tree is to be used to maintain and eventually migrate ports into the
official OpenBSD ports tree. This means that ports in this tree are actively
worked on and may not always build, though of course it's best to aim for
building ports.

The goal of this exercise is to get more people actively involved in ports. As
well as having a tool to better keep track of (half-)finished ports out there.
Instead of having it rot in a corner of a mailinglist.

### TODO

#### Testing tools

* [radamsa](https://github.com/aoh/radamsa)
* [fstorture](https://github.com/macosforge/fstools/tree/master/src/fstorture)
* [benchmark](https://github.com/google/benchmark)
* [intel-gpu-tools](https://cgit.freedesktop.org/xorg/app/intel-gpu-tools/) - sysutils/intel-gpu-tools/
* [nfstest](http://wiki.linux-nfs.org/wiki/index.php/NFStest) - sysutils/nfstest
* [NFSometer](http://linux-nfs.org/wiki/index.php/NFSometer)
* [glean](http://glean.sourceforge.net/run.html) - sysutils/glean
* [stress2](https://people.freebsd.org/~pho/stress/) - sysutils/stress2
* [fsx](https://codemonkey.org.uk/projects/fsx/) - sysutils/fsx
* [codespeed](https://github.com/tobami/codespeed) - www/codespeed/
* [gcovr](http://gcovr.com/) - devel/gcovr
* [postal](https://doc.coker.com.au/projects/postal/) - benchmarks/postal
* [dEQP](https://android.googlesource.com/platform/external/deqp/) - DrawElements Quality Program ([FOSDEM](https://archive.fosdem.org/2015/schedule/event/gl_testing/attachments/slides/670/export/events/attachments/gl_testing/slides/670/slides.pdf))
* [packetdrill](https://github.com/google/packetdrill), [TCP-IP-Regression-TestSuite](https://github.com/shivrai/TCP-IP-Regression-TestSuite)
* [XFS tests](http://git.kernel.org/cgit/fs/xfs/xfstests-dev.git)
* [File System Stress Testing Framework](http://code.google.com/p/file-system-stress-testing-framework/)
* [fio](http://git.kernel.dk/?p=fio.git)
* [blktests](https://github.com/osandov/blktests)
* [fsfuzzer](https://github.com/sughodke/fsfuzzer)
* [filebench](http://sourceforge.net/projects/filebench/)
* [tiobench](http://sourceforge.net/projects/tiobench/)
* [ffsb](http://sourceforge.net/projects/ffsb/)
* [XTS - X Test Suite, tests for core protocol conformance](http://cgit.freedesktop.org/xorg/test/xts/)
* [The SGI OpenGL conformance tests](http://www.mesa3d.org/conform.html)
* [entropy](http://www.fourmilab.ch/random/)
* [dieharder](http://www.phy.duke.edu/~rgb/General/dieharder.php) - [WIP port](http://openbsd-archive.7691.n7.nabble.com/NEW-math-dieharder-td148495.html)
* [wrk](https://github.com/wg/wrk)
* [httpress](https://bitbucket.org/yarosla/httpress/wiki/Home)
* [http-stress](https://bitbucket.org/vstakhov/http-stress)
* [smtpscript](https://github.com/poolpOrg/smtpscript)
* [dnsblast](https://github.com/jedisct1/dnsblast)
* [charybdefs](https://github.com/scylladb/charybdefs)
* [hackbench](https://people.redhat.com/mingo/cfs-scheduler/tools/hackbench.c)
* ipc-bench https://github.com/avsm/ipc-bench
* [uperf](http://uperf.org/)
* ~~[Open Posix Tests](http://posixtest.sourceforge.net/)~~
* ~~[lmbench](http://lmbench.sourceforge.net/)~~ - removed
* ~~[unixbench](http://code.google.com/p/byte-unixbench/)~~ - [removed](https://marc.info/?l=openbsd-ports&m=149384282228255&w=2)

#### Applications wishlist

* ntfy https://github.com/dschep/ntfy
* [blists](http://www.openwall.com/blists/)
* [Home Assistant](http://openbsd-archive.7691.n7.nabble.com/new-productivity-homeassistant-hass-fin-td335133.html)
* [openzwave](https://github.com/jcs/openbsd-ports/blob/master/comms/openzwave/Makefile)
* [Mayan EDMS](https://mayan.readthedocs.io/en/latest/) or [paperless](https://github.com/danielquinn/paperless)
* JabRef/[betterbib](https://github.com/nschloe/betterbib)
* Perkeep https://perkeep.org/
* https://public-inbox.org/
* bitwarden-ruby https://github.com/jcs/bitwarden-ruby
* [dedup](http://git.2f30.org/dedup/file/README.html)
* [albert](https://albertlauncher.github.io/docs/extensions/)
* [50mm](https://github.com/agile-leaf/50mm)
* http://people.duke.edu/~dgraham/etmtk/
* [cprover](https://github.com/diffblue/cbmc/)
* [Concourse CI](https://concourse.ci/)/[Drone.io](https://drone.io/)
* Patchwork or [Patchew](https://github.com/patchew-project/patchew)
* paperkey - security/paperkey/
* [duck](https://duck.sh/) - died?
* [California](https://wiki.gnome.org/Apps/California) - когда уже в OpenBSD будет хороший аналог Calendar.app?
* [Age of Empires](http://openage.sft.mx) games/openage
* [Sigil](https://code.google.com/p/sigil/) - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/sigil)
* [MyPaint](http://mypaint.org/) - [WIP port](http://openbsd-archive.7691.n7.nabble.com/NEW-graphics-mypaint-td274746.html)
* pandoc - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/pandoc)
* [yEd](https://www.yworks.com/en/products_yed_about.html)
* [Scan Tailor](http://scantailor.sourceforge.net/)
* [gpsprune](https://activityworkshop.net/software/prune/) - geo/gpsprune
* [mtkbabel](https://sourceforge.net/projects/mtkbabel/) - geo/mtkbabel
* ~~[ttyd](https://github.com/tsl0922/ttyd)~~, [gotty](https://github.com/yudai/gotty)
* ~~gitk https://git-scm.com/docs/gitk~~ can be kept in ~/bin as a single file
* ~~[s3cmd](http://s3tools.org/s3cmd) - [openbsd-wip](https://github.com/jasperla/openbsd-wip/tree/master/net/s3cmd)~~ - sysutils/restic is ok
* ~~[nnn](https://github.com/jarun/nnn)~~
* ~~[gtimelog](https://github.com/gtimelog/gtimelog)~~ (replaced by timewarrior)
* ~~[spin](http://spinroot.com/spin/whatispin.html)~~
* ~~[ted](https://www.nllgg.nl/Ted/)~~
* ~~[unpaper](http://unpaper.berlios.de/)~~
* ~~[gpxviewer](https://blog.sarine.nl/gpx-viewer/)~~
* ~~[Tapper](https://tapper.github.io/Tapper/)~~
* ~~[Seafile](https://www.seafile.com/en/home/)~~
* ~~[Syncthing](https://github.com/syncthing/syncthing/)~~


### How to use this tree

One way to use this tree is to clone it into your `/usr/ports/` directory and
adjust `PORTSDIR_PATH` accordingly in /etc/mk.conf:

	PORTSDIR_PATH=${PORTSDIR}:$(PORTSDIR)/openbsd-wip:${PORTSDIR}/mystuff

In the above example, a port with version 1 in cvs, version 2 in openbsd-wip.
Then, the version in cvs will be picked up before the version in openbsd-wip.
This is important if you are building packages using dpb. The order of 
PORTSDIR_PATH is important.

To prevent "merge commits" from showing up in git log, it's recommended to
either update your tree with:

	git fetch && git rebase origin

or set the following option in `.git/config` in your local openbsd-wip repo
(see git-config(1) on `branch.<name>.rebase` and `branch.autosetuprebase`):

	git config branch.master.rebase true

### See also:

* https://github.com/topics/openbsd-wip
