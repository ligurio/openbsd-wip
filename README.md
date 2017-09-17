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

* [intel-gpu-tools](https://cgit.freedesktop.org/xorg/app/intel-gpu-tools/) - sysutils/intel-gpu-tools/
* [nfstest](http://wiki.linux-nfs.org/wiki/index.php/NFStest) - sysutils/nfstest
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
* [fsfuzzer](https://github.com/sughodke/fsfuzzer)
* [filebench](http://sourceforge.net/projects/filebench/)
* [tiobench](http://sourceforge.net/projects/tiobench/)
* [ffsb](http://sourceforge.net/projects/ffsb/)
* [lmbench](http://lmbench.sourceforge.net/)
* [NFSometer](http://linux-nfs.org/wiki/index.php/NFSometer)
* [XTS - X Test Suite, tests for core protocol conformance](http://cgit.freedesktop.org/xorg/test/xts/)
* [The SGI OpenGL conformance tests](http://www.mesa3d.org/conform.html)
* [unixbench](http://code.google.com/p/byte-unixbench/)
* [Open Posix Testsuite](http://posixtest.sourceforge.net)
* [entropy](http://www.fourmilab.ch/random/)
* [dieharder](http://www.phy.duke.edu/~rgb/General/dieharder.php) - [WIP port](http://openbsd-archive.7691.n7.nabble.com/NEW-math-dieharder-td148495.html)
* [wrk](https://github.com/wg/wrk)
* [httpress](https://bitbucket.org/yarosla/httpress/wiki/Home)
* [http-stress](https://bitbucket.org/vstakhov/http-stress)
* [smtpscript](https://github.com/poolpOrg/smtpscript)
* [dnsblast](https://github.com/jedisct1/dnsblast)
* [charybdefs](https://github.com/scylladb/charybdefs)

#### 

* [spin](http://spinroot.com/spin/whatispin.html)
* paperkey - security/paperkey/
* [blists](http://www.openwall.com/blists/)
* [s3cmd](http://s3tools.org/s3cmd) - [openbsd-wip](https://github.com/jasperla/openbsd-wip/tree/master/net/s3cmd)
* [duck](https://duck.sh/)
* [LanguageTool](https://languagetool.org/)
* [Telegram](https://github.com/vysheng/tg)
* [castnow](https://github.com/xat/castnow) or something to cast to Chromecast
* [gtimelog](https://github.com/gtimelog/gtimelog)
* [California](https://wiki.gnome.org/Apps/California) - когда уже в OpenBSD будет хороший аналог Calendar.app?
* [Age of Empires](http://openage.sft.mx) games/openage
* [Sigil](https://code.google.com/p/sigil/) - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/sigil)
* [MyPaint](http://mypaint.org/) - [WIP port](http://openbsd-archive.7691.n7.nabble.com/NEW-graphics-mypaint-td274746.html)
* [Gnome Paint](https://launchpad.net/gnome-paint) - здорово было бы иметь минималистичный графический редактор, чтобы не устанавливать Gimp.
* pandoc - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/pandoc)
* [yed](https://www.yworks.com/en/products_yed_about.html)
* [Scan Tailor](http://scantailor.sourceforge.net/)
* [gpsprune](https://activityworkshop.net/software/prune/) - geo/gpsprune
* [mtkbabel](https://sourceforge.net/projects/mtkbabel/) - geo/mtkbabel
* [asciijump](http://otak.k-k.pl/asciijump/gallery.php)
* [minisip](http://freshmeat.net/projects/minisip/)
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

* https://github.com/jasperla/openbsd-wip
* https://github.com/aharri/wip-ports
* https://github.com/jirib/openbsd-mystuff