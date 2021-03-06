
ifeq ($(TARGET),rhel7)
	OS := rhel7
else
	OS := centos7
endif

ifeq ($(VERSION), 5.16)
	VERSION := 5.16
else
	VERSION :=
endif

.PHONY: build
build:
	hack/build.sh $(OS) $(VERSION)

.PHONY: test
test:
	TEST_MODE=true hack/build.sh $(OS) $(VERSION)
