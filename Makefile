NAME=mlengg
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://f5QYibttxx4fC25L4tCn@pypi.fury.io/dipendra96/ -t registry.heroku.com/$(NAME)/web:$(COMMIT_ID) .

push-ml-api-heroku:
	docker push registry.heroku.com/mlengg/web:$(COMMIT_ID)
