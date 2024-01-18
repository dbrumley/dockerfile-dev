all:
	docker build -t dbrumley/dev:arm .
	docker push dbrumley/dev:arm

	docker build --platform=Linux/amd64 -t dbrumley/dev:amd64 .
	docker push dbrumley/dev:amd64
	docker tag dbrumley/dev:amd64 dbrumley/dev:latest
	docker push dbrumley/dev:latest
