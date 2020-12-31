# build stage
FROM golang:alpine AS build-env
ADD . /src
RUN cd /src && go build -o main

# final stage
FROM scratch
WORKDIR /app
COPY --from=build-env /src/main /app/
CMD ["./main"]