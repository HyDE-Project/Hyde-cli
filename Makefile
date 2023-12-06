prefix := /usr
bindir := $(prefix)/bin
libdir := $(prefix)/lib/hyprdots-ctl
etcdir := /etc/hyprdots-ctl
BACKUPDIR := $(shell mktemp -d)

all: directories backup install

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
	# Copy the current configuration files to the backup directory
	mkdir -p $(BACKUPDIR)/bin
	mkdir -p $(BACKUPDIR)/scripts
	mkdir -p $(BACKUPDIR)/confs
	[ "$(ls -A $(DESTDIR)$(bindir))" ] && cp -r $(DESTDIR)$(bindir)/* $(BACKUPDIR)/bin || true
	[ "$(ls -A $(DESTDIR)$(libdir))" ] && cp -r $(DESTDIR)$(libdir)/* $(BACKUPDIR)/scripts || true
	[ "$(ls -A $(DESTDIR)$(etcdir))" ] && cp -r $(DESTDIR)$(etcdir)/* $(BACKUPDIR)/confs || true

install:
	install -m 755 ./hyprdots-ctl $(DESTDIR)$(bindir) || make restore
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
	-rm -rf $(wildcard $(DESTDIR)$(libdir)/*)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/*)

clean:
	-rm -f $(wildcard $(DESTDIR)$(bindir)/hyprdots-ctl)
	-rm -rf $(wildcard $(DESTDIR)$(libdir)/*)
	-rm -rf $(wildcard $(DESTDIR)$(etcdir)/*)