MODULE = dart-sdk-1.9.1

all: rpm

rpm-dir:
	@rm -rf `pwd`/RPMBUILD; \
	mkdir -p `pwd`/RPMBUILD/{BUILD,SOURCES,RPMS,SRPMS,SPECS}

rpm: rpm-dir 
	rpmbuild -ta --define "%_topdir `pwd`/RPMBUILD" `pwd`/${MODULE}.tar.gz






