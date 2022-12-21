postgres:
docker run --name postgres12-alpine -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=G8keeper -d postgres12-alpine
createdb:
docker exec -it postgres12-alpine createdb --username=root --owner=root simple-bank-api

dropdb:
docker exec -it postgres12-alpine dropdb simple-bank-api

.PHONY: potsgres createdb dropdb