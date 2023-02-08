IMAGE	?= redterror/stack_master

build:
	docker build -t $(IMAGE) .
