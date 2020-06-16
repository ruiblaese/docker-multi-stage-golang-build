build:
	docker build --pull --rm -f "Dockerfile" -t ruiblaese/multi-stage-go-build:latest "."

push:
	docker push ruiblaese/multi-stage-go-build:latest