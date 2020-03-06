VERSION=3.4.10
PROJECT_ID=google_containers
PROJECT=ccr.ccs.tencentyun.com/cn.btx

all: build

build:
	docker build --pull -t ${PROJECT}/kubernetes-zookeeper:${VERSION} .

push: build
	gcloud docker -- push ${PROJECT}/kubernetes-zookeeper:${VERSION}

.PHONY: all build push
