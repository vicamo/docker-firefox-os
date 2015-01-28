DOCKER_USER ?= \
  $(strip $(if $(shell docker info 2>/dev/null | grep ^Username: | cut -d ' ' -f 2), \
    $(shell docker info 2>/dev/null | grep ^Username: | cut -d ' ' -f 2)/))

define transform_to_target_name
$(shell echo "$(1)" | tr :/ _)
endef

# $(1): origin dir
# $(2): transformed name
# $(3): tag name
define def-docker-image-transformed-name
.PHONY: $(2) clean-$(2)

$(2): $(call transform_to_target_name,$(shell cat $(1)/Dockerfile | grep ^FROM | awk '{ print $$2; }'))
	if ! docker inspect $(3) > /dev/null 2>&1; then \
	  docker build -t $(3) $(1); \
	fi

clean-$(2):
	docker rmi $(3)

build: $(2)
clean: clean-$(2)
endef

# $(1): origin dir
# $(2): tag name
define def-docker-image
$(call def-docker-image-transformed-name,$(1),$(call transform_to_target_name,$(2)),$(2))
endef

# $(1): transformed name
define def-immutable-docker-image-transformed-name
.PHONY: $(1) clean-$(1)

$(1):
	@true

clean-$(1):
	@true

build: $(1)
clean: clean-$(1)
endef

# $(1): tag name
define def-immutable-docker-image
$(call def-immutable-docker-image-transformed-name,$(call transform_to_target_name,$(1)))
endef

all:
	@echo "What do you want to do today?"

.PHONY: build clean

#########################
# Immutable docker images

$(eval $(call def-immutable-docker-image,debian:wheezy))
$(eval $(call def-immutable-docker-image,debian:jessie))
$(eval $(call def-immutable-docker-image,debian:sid))

$(eval $(call def-immutable-docker-image,ubuntu:trusty))
$(eval $(call def-immutable-docker-image,ubuntu:vivid))

$(eval $(call def-immutable-docker-image,vicamo/ubuntu-core:vivid-armhf))

###########################################
# Docker images provided by this repository

$(foreach f,$(shell find . -type f -name Dockerfile), \
  $(eval _name := $(shell echo $f | cut -d / -f 2)) \
  $(eval _tag := $(shell echo $f | cut -d / -f 3)) \
  $(eval $(call def-docker-image,$(_name)/$(_tag),$(DOCKER_USER)$(_name):$(_tag))) \
)
