up:
	@docker-compose up -d

up-build:
	@docker-compose up -d --build


down:
	@docker-compose down


# Default username/password: admin/admin
dashboard:
	@open http://localhost:5601


build:
	@GOOS=linux GOARCH=arm64 go build -o main


build-fluentd:
	@BUILDKID_PROGRESS=plain docker-compose build fluentd
