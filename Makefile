
# Image URL to use all building/pushing image targets
IMG ?= gcr.io/arrikto-playground/kubeflow/oidc-authservice
TAG ?= $(shell git log -1 --format=%h)

docker-build:
	docker build -t $(IMG):$(TAG) .

docker-push:
	docker push $(IMG):$(TAG)

publish: docker-build docker-push