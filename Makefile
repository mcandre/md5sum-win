APP=md5sum
VERSION=1.22
API=$(APP)-$(VERSION).aip
MSI=$(APP)-$(VERSION).msi

all: installer

installer: $(AIP)
	AdvancedInstaller /build $(AIP)

install: $(MSI)
	msiexec /qb /i $(MSI)