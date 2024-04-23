pkgname := hyde-cli
prefix := /usr
bindir := $(prefix)/bin
libdir := $(prefix)/lib/$(pkgname)
etcdir := /etc/$(pkgname)
usrdir := $(prefix)/share/$(pkgname)
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
	mkdir -p $(DESTDIR)$(usrdir)


backup:

	mkdir -p $(BACKUPDIR)/bin
	mkdir -p $(BACKUPDIR)/scripts
	mkdir -p $(BACKUPDIR)/confs
	mkdir -p $(BACKUPDIR)/extras
	if [ -f $(DESTDIR)$(bindir)/Hyde ]; then \
	cp $(DESTDIR)$(bindir)/Hyde $(BACKUPDIR)/bin; \
	fi
		if [ -f $(DESTDIR)$(bindir)/Hyde-install ]; then \
	cp $(DESTDIR)$(bindir)/Hyde-install $(BACKUPDIR)/bin; \
	fi
	[ "$(ls -A $(DESTDIR)$(libdir))" ] && cp -r $(DESTDIR)$(libdir)/* $(BACKUPDIR)/scripts || true
	[ "$(ls -A $(DESTDIR)$(etcdir))" ] && cp -r $(DESTDIR)$(etcdir)/* $(BACKUPDIR)/confs || true
	[ "$(ls -A $(DESTDIR)$(usrdir))" ] && cp -r $(DESTDIR)$(usrdir)/* $(BACKUPDIR)/extras || true

install:
	install -m 755 ./Hyde $(DESTDIR)$(bindir) 
	install -m 755 ./Hyde-install $(DESTDIR)$(bindir)

	@echo "Version: $(VERSION)" > .$(pkgname).ver
	@echo "Last commit: $(LAST_COMMIT)" >> .$(pkgname).ver
	@echo "Commit message: '$(COMMIT_MESSAGE)'" >> .$(pkgname).ver

	install -m 644 ./.$(pkgname).ver $(DESTDIR)$(etcdir) 

	install -m 755 ./Scripts/* $(DESTDIR)$(libdir) 
	install -m 644 ./Configs/* $(DESTDIR)$(etcdir) 
	install -m 644 ./Extras/* $(DESTDIR)$(usrdir) 

restore:
	make clean
	# Copy the backup files back to the configuration directory
	cp -r $(BACKUPDIR)/bin/* $(DESTDIR)$(bindir)
	cp -r $(BACKUPDIR)/scripts/* $(DESTDIR)$(libdir)
	cp -r $(BACKUPDIR)/confs/* $(DESTDIR)$(etcdir)
	cp -r $(BACKUPDIR)/extras/* $(DESTDIR)$(usrdir)


uninstall: purge
clean: purge 
purge : 
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyde-install)

	-rm -rf $(wildcard $(DESTDIR)$(libdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/)
	-rm -rf $(wildcard $(DESTDIR)$(usrdir)/)

old:

	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots)
	-rm -f $(wildcard $(DESTDIR)$(bindir)/Hyprdots-install)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/lib/hyprdots-ctl/)
	-rm -rf $(wildcard $(DESTDIR)$(prefix)/etc/hyprdots-ctl/)