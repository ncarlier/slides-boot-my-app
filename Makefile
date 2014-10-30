.SILENT :
.PHONY : volume dev build clean run shell test

USERNAME:=ncarlier
APPNAME:=slides-boot-my-app
IMAGE:=$(USERNAME)/$(APPNAME)

define docker_run_flags
--rm \
--env-file $(PWD)/etc/env.conf \
-p 35729:35729 \
-i -t
endef

all: build

volume:
	echo "Building $(APPNAME) volumes..."
	sudo docker run -v $(PWD):/opt/$(APPNAME) --name $(APPNAME)_volumes busybox true

dev:
	$(eval docker_run_flags += --volumes-from $(APPNAME)_volumes)
	echo "DEVMODE: Using volumes from $(APPNAME)_volumes"

build:
	echo "Building $(IMAGE) docker image..."
	sudo docker build --rm -t $(IMAGE) .

clean:
	echo "Removing $(IMAGE) docker image..."
	sudo docker rmi $(IMAGE)

run:
	echo "Running $(IMAGE) docker image..."
	sudo docker run $(docker_run_flags) --name $(APPNAME) $(IMAGE)

shell:
	echo "Running $(IMAGE) docker image with shell access..."
	sudo docker run $(docker_run_flags) --entrypoint="/bin/bash" $(IMAGE) -c /bin/bash

test:
	echo "Running tests..."
	sudo docker run $(docker_run_flags) $(IMAGE) test

