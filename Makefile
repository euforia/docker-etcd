
build:
	docker build -t etcd:3.0.8 .
	docker tag etcd:3.0.8 etcd:latest