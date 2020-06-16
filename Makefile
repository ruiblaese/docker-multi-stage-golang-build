build:
	docker build --pull --rm -f "Dockerfile" -t ruiblaese/multi-stage-go-build:latest "."