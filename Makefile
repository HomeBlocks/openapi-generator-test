GENERATOR_IMAGE = openapitools/openapi-generator-cli
SPEC_FILE = petstore.yaml
OUTPUT_DIR = out
WORKDIR = $(shell pwd)
GIT_REPO_ID = openapi-generator-test
GIT_USER_ID = HomeBlocks

all: go-client go-echo-server go-gin-server go-server

define generate
	docker run --rm -v $(WORKDIR):/local $(GENERATOR_IMAGE) generate \
	-i /local/$(SPEC_FILE) \
	-g $1 \
	-o /local/$(OUTPUT_DIR)/$1 \
	--git-repo-id $(GIT_REPO_ID) \
	--git-user-id $(GIT_USER_ID)
endef

go-client:
	$(call generate,go)

go-echo-server:
	$(call generate,go-echo-server)

go-gin-server:
	$(call generate,go-gin-server)

go-server:
	$(call generate,go-server)
