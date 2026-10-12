-- Minimal Tarantool instance script started by the rc.d(8) script.
--
-- See https://www.tarantool.io/en/doc/latest/ for the full list of
-- configuration options.

box.cfg {
	listen = '127.0.0.1:3301',
	work_dir = '${LOCALSTATEDIR}/db/tarantool',
}
