# Docker Wordpress template

Template for running dockerized Wordpress instances easily. Also this template is preconfigured for sourcing `Gatsby`.

## How to run?

These steps will preconfigure whole environment. You must do this before running Docker.

> Please set up your deployment vars according to environment using `.env` file.

> If you're using Docker use `initial-deploy-docker.sh`.

```bash
git clone https://github.com/fedek6/docker-wordpress-template.git
cd docker-wordpress-template
cp env-example .env
nano .env
./bin/[initial-deploy-docker.sh|initial-deploy.sh]
```

Now you're ready to run the Docker:

```bash
docker-compose up
```

