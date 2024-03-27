prefix := /usr
bindir := $(prefix)/bin
libdir := $(prefix)/lib/hyprdots-ctl
etcdir := /etc/hyprdots-ctl
BACKUPDIR := $(shell mktemp -d)
VERSION := $(shell git describe --tags)
LAST_COMMIT := $(shell git log -1 --pretty=format:"%h %cd")
COMMIT_MESSAGE := $(shell git show -s --format='%B')
INSTALLATION_DIRECTORY := $(shell pwd)

all: check directories backup  install

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
	if [ -f $(DESTDIR)$(bindir)/Hyprdots ]; then \
	cp $(DESTDIR)$(bindir)/Hyprdots $(BACKUPDIR)/bin; \
	fi
		if [ -f $(DESTDIR)$(bindir)/Hyprdots-install ]; then \
	cp $(DESTDIR)$(bindir)/Hyprdots-install $(BACKUPDIR)/bin; \
	fi
	[ "$(ls -A $(DESTDIR)$(libdir))" ] && cp -r $(DESTDIR)$(libdir)/* $(BACKUPDIR)/scripts || true
	[ "$(ls -A $(DESTDIR)$(etcdir))" ] && cp -r $(DESTDIR)$(etcdir)/* $(BACKUPDIR)/confs || true

install:
	install -m 755 ./Hyprdots $(DESTDIR)$(bindir) || make restore
	install -m 755 ./Hyprdots-install $(DESTDIR)$(bindir) || make restore

	@echo "Version: $(VERSION)" > .hyprdots-ctl.ver
	@echo "Last commit: $(LAST_COMMIT)" >> .hyprdots-ctl.ver
	@echo "Commit message: '$(COMMIT_MESSAGE)'" >> .hyprdots-ctl.ver
	@echo "Installation directory: '$(INSTALLATION_DIRECTORY)'" >> .hyprdots-ctl.ver

	install -m 644 ./.hyprdots-ctl.ver $(DESTDIR)$(etcdir) || make restore

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

	-rm -rf $(wildcard $(DESTDIR)$(libdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/)

clean:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots-install)

	-rm -rf $(wildcard $(DESTDIR)$(libdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/)
	