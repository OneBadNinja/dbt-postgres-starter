# DBT-Postgres Starter

## Setup

The setup comprises of a local postgres server and dbt core running in docker containers. 

First we must setup the database environment variables. Simply copy over `.env.example` to `.env.local`

```
cp .env.example .env.local
```

Then spin up the containers with

```
docker compose up
```

## Connecting to the database

Use a client such as dbeaver with the following configuration (mirroring the environment variables earlier)

```
Host: localhost
Database: dbt_test
Username: dev
Password: password
Port: 5432
```

## Running the dbt pipeline

To run DBT, start an interactive shell with the container:

```
docker exec -it test-setup-dbt /bin/bash
```

Currently the default DBT starter models are in place, which build a single table and a view titled `my_first_dbt_model` and `my_second_dbt_model`. You can trigger the build from the container using

```
dbt run
```

You can also trigger tests with

```
dbt test
```

**Note:** you should expect a test failure here as part of the default setup.