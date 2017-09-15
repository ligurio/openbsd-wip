### openbsd-wip - work in progress ports for OpenBSD

This tree is to be used to maintain and eventually migrate ports into the
official OpenBSD ports tree. This means that ports in this tree are actively
worked on and may not always build, though of course it's best to aim for
building ports.

The goal of this exercise is to get more people actively involved in ports. As
well as having a tool to better keep track of (half-)finished ports out there.
Instead of having it rot in a corner of a mailinglist.

### TODO

* [intel-gpu-tools](https://cgit.freedesktop.org/xorg/app/intel-gpu-tools/) - sysutils/intel-gpu-tools/
* [nfstest](http://wiki.linux-nfs.org/wiki/index.php/NFStest) - sysutils/nfstest
* [glean](http://glean.sourceforge.net/run.html) - sysutils/glean
* [stress2](https://people.freebsd.org/~pho/stress/) - sysutils/stress2
* [fsx](https://codemonkey.org.uk/projects/fsx/) - sysutils/fsx
* [codespeed](https://github.com/tobami/codespeed) - www/codespeed/
* paperkey - security/paperkey/
* [gcovr](http://gcovr.com/) - devel/gcovr
* [Collection 4](https://collectd.org/wiki/index.php/Collection_4)
* [blists](http://www.openwall.com/blists/)
* [s3cmd](http://s3tools.org/s3cmd) - [openbsd-wip](https://github.com/jasperla/openbsd-wip/tree/master/net/s3cmd)
* [duck](https://duck.sh/)
* [Pywikibot](https://www.mediawiki.org/wiki/Manual:Pywikibot/ru)
* [dEQP](https://android.googlesource.com/platform/external/deqp/) - DrawElements Quality Program ([FOSDEM](https://archive.fosdem.org/2015/schedule/event/gl_testing/attachments/slides/670/export/events/attachments/gl_testing/slides/670/slides.pdf))
* [spotifyd](https://simonpersson.github.io/spotifyd/)
* [LanguageTool](https://languagetool.org/)
* [Telegram](https://github.com/vysheng/tg)
* [castnow](https://github.com/xat/castnow) or something to cast to Chromecast
* [Attic](https://attic-backup.org/) и [atticmatic](https://torsion.org/atticmatic/)
* [QEMU guest agent](http://wiki.qemu.org/Features/QAPI/GuestAgent) - [WIP port in ports@](http://comments.gmane.org/gmane.os.openbsd.ports/65642)
* [OSRM](http://project-osrm.org/)
* [rr](http://rr-project.org/)
* [T - twitter client](https://sferik.github.io/t/)
* [lastpass-cli](https://github.com/lastpass/lastpass-cli) - [WIP port in ports@](http://openbsd-archive.7691.n7.nabble.com/NEW-security-lastpass-cli-td267355.html)
* [gtimelog](https://github.com/gtimelog/gtimelog)
* [California](https://wiki.gnome.org/Apps/California) - когда уже в OpenBSD будет хороший аналог Calendar.app?
* [Age of Empires](http://openage.sft.mx) games/openage
* [Sigil](https://code.google.com/p/sigil/)
* [MyPaint](http://mypaint.intilinux.com/?page_id=9)
* [Gnome Paint](https://launchpad.net/gnome-paint) - здорово было бы иметь минималистичный графический редактор, чтобы не устанавливать Gimp.
* [guacamole](https://guac-dev.org/doc/gug/installing-guacamole.html#building-guacamole-from-source)
* [ethercalc](https://ethercalc.org/)
* [etherpad](https://github.com/ether/pad)
* [Intel GPU tools](https://cgit.freedesktop.org/xorg/app/intel-gpu-tools/)
* [conman](https://code.google.com/p/conman/)
* [yed](https://www.yworks.com/en/products_yed_about.html)
* [pkcs11-dump](https://sites.google.com/site/alonbarlev/pkcs11-utilities)
* [Scan Tailor](http://scantailor.sourceforge.net/)
* [UniConvertor](http://www.sk1project.org/modules.php?name=Products&product=uniconvertor&op=download)
* [postal](https://doc.coker.com.au/projects/postal/) - benchmarks/postal
* [gpsprune](https://activityworkshop.net/software/prune/) - geo/gpsprune
* [mtkbabel](https://sourceforge.net/projects/mtkbabel/) - geo/mtkbabel
* [xtrkcad](https://sourceforge.net/projects/xtrkcad-fork/) - [импортировано](http://ports.su/cad/xtrkcad)
* [Открытые ресурсы для игры OpenTTD](https://bundles.openttdcoop.org/) - игра уже давно портирована, но ресурсы нужно брать из коммерческой версии. Нужно сделать порт для открытых ресурсов.
* [pybookreader](https://sourceforge.net/projects/pybookreader/)
* [netams](http://netams.com)
* [POVColor](https://sourceforge.net/projects/povcolor/) - неплохо было бы иметь хотя бы один color picker.
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
