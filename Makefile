all: build

build: compress
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n promxy \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/promxy.postinstall \
		--after-remove build/contrib/promxy.postrm \
		-p build/packages \
		build/contrib/promxy.service=/lib/systemd/system/promxy.service \
		build/contrib/promxy.defaults=/etc/default/promxy \
		build/contrib/promxy.preset=/usr/lib/systemd/system-preset/promxy.preset \
		build/contrib/config.yml=/etc/promxy/promxy.yml \
        /tmp/promxy=/usr/bin/promxy

compress: download
	upx /tmp/promxy

download:
	cd /tmp && curl -Lo promxy https://github.com/jacksontj/promxy/releases/download/v$(VERSION)/promxy-v$(VERSION)-linux-amd64
	cd /tmp && chmod +x promxy
