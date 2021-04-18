all: xenstat-exporter

xenstat-exporter:
	go build .
	strip -s $@

install:
	$(INSTALL) -D -m 755 -t $(DESTDIR)/usr/bin/ xenstat-exporter

.PHONY: all
