IMAGE	?= redterror/stack_master
STACK_MASTER_VERSION	:= $(shell ./bin/read-sm-version)

build:
	docker build -t $(IMAGE) .

tag: build
	docker tag $(IMAGE):latest $(IMAGE):$(STACK_MASTER_VERSION)

push: tag
	docker push redterror/stack_master:latest
	docker push redterror/stack_master:$(STACK_MASTER_VERSION)
