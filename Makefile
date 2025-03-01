PREFIX?=
P=${PREFIX}

install:
	mkdir -p ${P}/bin
	cp -f swp ${P}/bin/swp
	chmod +x ${P}/bin/swp

uninstall:
	rm -f ${P}/bin/swp
