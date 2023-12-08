prefix := /usr
bindir := $(prefix)/bin
libdir := $(prefix)/lib/hyprdots-ctl
etcdir := /etc/hyprdots-ctl
BACKUPDIR := $(shell mktemp -d)

all: check download directories backup  install

check:
	@which curl >/dev/null || (echo "Error: curl is not installed" && exit 1)
	@which git >/dev/null || (echo "Error: git is not installed" && exit 1)

download:
	curl -o Hyprdots https://raw.githubusercontent.com/prasanthrangan/hyprdots/a40b2aa3a3fc5fe9e6bf9395e517326f21d3f0ee/Scripts/Hyprdots

update:
	git fetch
	if [ "$(git rev-parse HEAD)" != "$(git rev-parse @{u})" ]; then \
		echo "Changes are available in the remote repository. Pulling changes..."; \
		git reset --hard; \
		git clean -fd; \
		git pull; \
	fi

directories:
	mkdir -p $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)$(libdir)
	mkdir -p $(DESTDIR)$(etcdir)

backup:

	mkdir -p $(BACKUPDIR)/bin
	mkdir -p $(BACKUPDIR)/scripts
	mkdir -p $(BACKUPDIR)/confs
	if [ -f $(DESTDIR)$(bindir)/hyprdots-ctl ] && [ -f $(DESTDIR)$(bindir)/Hyprdots ]; then \
	cp $(DESTDIR)$(bindir)/hyprdots-ctl $(DESTDIR)$(bindir)/Hyprdots $(BACKUPDIR)/bin; \
	fi
	[ "$(ls -A $(DESTDIR)$(libdir))" ] && cp -r $(DESTDIR)$(libdir)/* $(BACKUPDIR)/scripts || true
	[ "$(ls -A $(DESTDIR)$(etcdir))" ] && cp -r $(DESTDIR)$(etcdir)/* $(BACKUPDIR)/confs || true

install:
	install -m 755 ./hyprdots-ctl $(DESTDIR)$(bindir) || make restore
	install -m 755 ./Hyprdots $(DESTDIR)$(bindir) || make restore
	install -m 755 ./Scripts/* $(DESTDIR)$(libdir) || make restore
	install -m 644 ./Configs/* $(DESTDIR)$(etcdir) || make restore

restore:
	make clean
	# Copy the backup files back to the configuration directory
	cp -r $(BACKUPDIR)/bin/* $(DESTDIR)$(bindir)
	cp -r $(BACKUPDIR)/scripts/* $(DESTDIR)$(libdir)
	cp -r $(BACKUPDIR)/confs/* $(DESTDIR)$(etcdir)

uninstall:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/hyprdots-ctl)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -rf $(wildcard $(DESTDIR)$(libdir)/*)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/*)

clean:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/hyprdots-ctl)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -rf $(wildcard $(DESTDIR)$(libdir)/*)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/*)