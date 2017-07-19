WAR := bazel-bin/release.war

all:
	bazel --batch build release

install:
	install -d $(DESTDIR)/usr/share/ins-gerrit/
	install --mode 0644 $(WAR) $(DESTDIR)/usr/share/ins-gerrit/gerrit.war

clean:
	bazel --batch clean

.PHONY: all clean
.DELETE_ON_ERROR:
