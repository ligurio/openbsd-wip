### openbsd-wip - work in progress ports for OpenBSD

This tree is to be used to maintain and eventually migrate ports into the
official OpenBSD ports tree. This means that ports in this tree are actively
worked on and may not always build, though of course it's best to aim for
building ports.

The goal of this exercise is to get more people actively involved in ports. As
well as having a tool to better keep track of (half-)finished ports out there.
Instead of having it rot in a corner of a mailinglist.

### TODO

* [WebDAV](https://github.com/hacdias/webdav?files=1) OR [http.upload](https://github.com/wmark/http.upload)
* https://github.com/jcs/ssh-agent-card-prompt
* [netdata](https://github.com/netdata/netdata/) - https://github.com/netdata/netdata/pull/4192
* [photoprism](https://photoprism.org/) OR [50mm](https://github.com/agile-leaf/50mm) OR [Colorimetry](https://git.matthiasloibl.com/archive/colorimetry/src/branch/develop) OR [Piwigo](https://piwigo.org/)
* [bitwarden-go](https://github.com/VictorNine/bitwarden-go), [bitwarden_rs](https://github.com/dani-garcia/bitwarden_rs)
* [Home Assistant](http://openbsd-archive.7691.n7.nabble.com/new-productivity-homeassistant-hass-fin-td335133.html)
* [Mailpile](https://github.com/mailpile/Mailpile)
----------
* https://github.com/t-brown/mcds - mutt + CardDAV
* [sagan](https://gist.github.com/litew/1e94730ed1b862aa59d4c6b065a0d4a9)
* [calibre-web](https://github.com/janeczku/calibre-web)
* [Shinobi](https://gitlab.com/Shinobi-Systems/ShinobiCE)
* [gotify](https://gotify.net/) - a simple server for sending and receiving messages
* JabRef
* [Roomba980-Python](https://github.com/NickWaterton/Roomba980-Python)
* [Sharedrop](https://github.com/cowbell/sharedrop)/[magic-wormhole](https://github.com/warner/magic-wormhole)/[croc](https://github.com/schollz/croc)/[file.pizza](https://file.pizza/)/[ncp](https://www.fefe.de/ncp/)/[instant.io](https://instant.io/) - share files
* [geneweb](https://geneweb.tuxfamily.org/)
* [albert](https://github.com/albertlauncher/albert)
* [fselect](https://github.com/jhspetersson/fselect)
* [Evergreen CI](https://github.com/evergreen-ci/evergreen)/[Concourse CI](https://concourse.ci/)/[Drone.io](https://drone.io/)
* https://github.com/EmbarkStudios/wireguard-ui
* https://github.com/AdguardTeam/AdGuardHome
* [Apache Guacamole](https://guacamole.apache.org/)
* [xapers](https://finestructure.net/xapers/)/[papis](https://papis.readthedocs.io/en/latest/)
* grabc http://www.muquit.com/muquit/software/grabc/grabc.html
* Garmin: [garmin-connect-export](https://github.com/kjkjava/garmin-connect-export), [GcpUploader](https://github.com/dlotton/GcpUploader), [postrunner](https://github.com/scrapper/postrunner)
* PeerTube (see https://github.com/Chocobozzz/PeerTube/issues/1392)
* [drakon_editor](https://github.com/stepan-mitkin/drakon_editor)
* [kgt](https://github.com/katef/kgt)
* [miraclecast](https://github.com/albfan/miraclecast)
* [clangd](https://clang.llvm.org/extra/clangd/index.html)
* [brow.sh](https://www.brow.sh/)
* [Loki](https://github.com/grafana/loki)
* [winrm-cli](https://github.com/masterzen/winrm-cli), [winrmcp](https://github.com/packer-community/winrmcp)
* [filebrowser](https://github.com/filebrowser/filebrowser)
* [empty](https://sourceforge.net/projects/empty/)
* [blists](http://www.openwall.com/blists/)
* [openzwave](https://github.com/jcs/openbsd-ports/blob/master/comms/openzwave/Makefile)
* [Mayan EDMS](https://mayan.readthedocs.io/en/latest/) or [paperless](https://github.com/danielquinn/paperless)
* [Perkeep](https://perkeep.org/)
* https://public-inbox.org/
* [dedup](http://git.2f30.org/dedup/file/README.html)
* [albert](https://albertlauncher.github.io/docs/extensions/)
* http://people.duke.edu/~dgraham/etmtk/
* Patchwork or [Patchew](https://github.com/patchew-project/patchew)
* paperkey - `security/paperkey/`
* [duck](https://duck.sh/) - died?
* [California](thttps://wiki.gnome.org/Apps/California) - когда уже в OpenBSD будет хороший аналог Calendar.app?
* [Age of Empires](http://openage.sft.mx) `games/openage`
* [Sigil](https://code.google.com/p/sigil/) - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/sigil)
* [MyPaint](http://mypaint.org/) - [WIP port](http://openbsd-archive.7691.n7.nabble.com/NEW-graphics-mypaint-td274746.html)
* pandoc - [WIP port](https://github.com/jirib/openbsd-mystuff/tree/master/textproc/pandoc)
* [yEd](https://www.yworks.com/en/products_yed_about.html)
* [Scan Tailor](http://scantailor.sourceforge.net/)
* [gpsprune](https://activityworkshop.net/software/prune/) - geo/gpsprune
* [mtkbabel](https://sourceforge.net/projects/mtkbabel/) - geo/mtkbabel
* ~~[cprover](https://github.com/diffblue/cbmc/)~~ - devel/cbmc
* ~~ntfy https://github.com/dschep/ntfy~~
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
