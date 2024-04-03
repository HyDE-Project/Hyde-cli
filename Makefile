pkgname := hyde-cli
prefix := /usr
bindir := $(prefix)/bin
libdir := $(prefix)/lib/$(pkgname)
etcdir := /etc/$(pkgname)
BACKUPDIR := $(shell mktemp -d)
VERSION := $(shell git describe --tags)
LAST_COMMIT := $(shell git log -1 --pretty=format:"%h %cd")
COMMIT_MESSAGE := $(shell git show -s --format='%B')
INSTALLATION_DIRECTORY := $(shell pwd)

all: check directories  install

check:
	@which git >/dev/null || (echo "Error: git is not installed" && exit 1)

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
	if [ -f $(DESTDIR)$(bindir)/Hyde ]; then \
	cp $(DESTDIR)$(bindir)/Hyde $(BACKUPDIR)/bin; \
	fi
		if [ -f $(DESTDIR)$(bindir)/Hyde-install ]; then \
	cp $(DESTDIR)$(bindir)/Hyde-install $(BACKUPDIR)/bin; \
	fi
	[ "$(ls -A $(DESTDIR)$(libdir))" ] && cp -r $(DESTDIR)$(libdir)/* $(BACKUPDIR)/scripts || true
	[ "$(ls -A $(DESTDIR)$(etcdir))" ] && cp -r $(DESTDIR)$(etcdir)/* $(BACKUPDIR)/confs || true

install:
	install -m 755 ./Hyde $(DESTDIR)$(bindir) || make restore
	install -m 755 ./Hyde-install $(DESTDIR)$(bindir) || make restore

	@echo "Version: $(VERSION)" > .$(pkgname).ver
	@echo "Last commit: $(LAST_COMMIT)" >> .$(pkgname).ver
	@echo "Commit message: '$(COMMIT_MESSAGE)'" >> .$(pkgname).ver

	install -m 644 ./.$(pkgname).ver $(DESTDIR)$(etcdir) || make restore

	install -m 755 ./Scripts/* $(DESTDIR)$(libdir) || make restore
	install -m 644 ./Configs/* $(DESTDIR)$(etcdir) || make restore

restore:
	make clean
	# Copy the backup files back to the configuration directory
	cp -r $(BACKUPDIR)/bin/* $(DESTDIR)$(bindir)
	cp -r $(BACKUPDIR)/scripts/* $(DESTDIR)$(libdir)
	cp -r $(BACKUPDIR)/confs/* $(DESTDIR)$(etcdir)

uninstall:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots-install)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/lib/hyprdots-ctl/)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/etc/hyprdots-ctl/)

	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde-install)

	-rm -rf $(wildcard $(DESTDIR)$(libdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/)

clean:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots-install)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/lib/hyprdots-ctl/)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/etc/hyprdots-ctl/)

	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde-install)

	-rm -rf $(wildcard $(DESTDIR)$(libdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/)