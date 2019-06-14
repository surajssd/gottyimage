.PHONY: build
build:
	docker build -t surajd/gotty .

.PHONY: push
push: build
	docker push surajd/gotty
