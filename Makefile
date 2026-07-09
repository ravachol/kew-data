PREFIX ?= /usr/local
DATADIR ?= $(PREFIX)/share

KEWDATADIR = $(DATADIR)/kew

.PHONY: all install uninstall

all:
	@echo "Nothing to build"

install:
	mkdir -p "$(DESTDIR)$(KEWDATADIR)"
	install -m 0644 artists.db "$(DESTDIR)$(KEWDATADIR)/artists.db"

uninstall:
	rm -f "$(DESTDIR)$(KEWDATADIR)/artists.db"
