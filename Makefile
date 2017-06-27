all: build

.PHONY: build

build:
	@docker run --rm -it \
		-v $(CURDIR):$(CURDIR) -w $(CURDIR) \
		harmish/node bash -c "\
			npm install -g grunt-cli karma; \
			npm install . ; \
			grunt build"