![logo](https://realhe.ro/img/logo.svg "Realhe.ro")

# Docker Wordpress template (with Gatsby support)

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

## How to use?

* http://localhost:8000 — `Wordpress` instance
* http://localhost:8000/index.php?graphql — grapqhl endpoint (if you enable `WP Gatsby` & `WP GraphQL`)
* http://localhost:8080 — `phpMyAdmin` (use user and password from `docker-compose` file)

## Developing custom plugins

You can develop custom plugins nicely using git submodules. Simply read about them and create a file called `.gitmodules.{branch}` before deploying (there's an example in root of this project).

## Deploy/pull changes

If you change anything in submodules or a composer file, simply run `./bin/deploy.sh`. This will automatically download new dependencies and pull git changes.

## Troubleshooting

If you cannot upload any files to your Wordpress instance, use command: 

```bash
chown www-data.www.data app/dist/wp-content/uploads
```

## Working example

[Here](https://github.com/Memocracy/headless-cms) you can find a working example with everything configured.
