# Requirements

curl, rspec, docker-compose should be pre-installed.

# Data

Data is stored in ./data directory.

./data/mysql - MySQL

./data/symfony - Symfony Code

# Building

For building run the command (run it only once, before first application running):

```
docker-compose run --rm deploy
```

# Running

For running run the command:

```
docker-compose up -d dev-app
```

# Stopping

```
docker-compose down
```

# Testing

```
rspec tests/
```
