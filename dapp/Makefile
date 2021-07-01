UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    OPEN = xdg-open
endif
ifeq ($(UNAME_S),Darwin)
    OPEN = open
endif

build:
	docker-compose -f ci/docker-compose.yml build
.PHONY: build

run:
	docker-compose -f ci/docker-compose.yml run multisigwallet
.PHONY: run

show:
	$(OPEN) http://localhost:8282
.PHONY: show
