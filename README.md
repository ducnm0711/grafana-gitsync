# Grafana compose

PostgreSQL + Grafana in Docker Compose.

This is sandbox environment to test provisioning, updates and make some tests on Grafana.

You can also import database schema in `initdb` folder with `.sql` files.

We use [git-sync](https://github.com/kubernetes/git-sync) to synchronise remote [dummy git folder](https://github.com/tanandy/gf-dummy-dashboards) locally to test hot provisionning in `dashboards` folder.
> note: don't forget to update dashboard uid and title to avoid conflict with current dashboards.

An existing script `dump.sh` is available to export grafana database for test purposes.

## Getting started

1. Copy `.env.sample` to `.env` file and replace existing values

2. Run Docker Compose:

  ```
  # Create dashboards folder to avoid Git Sync perm issue
  $ mkdir -p dashboards && docker-compose up
  ```

3. Visit http://localhost:3000/ and use the default credentials of `admin` / `admin`.

## Connect to PostgreSQL with psql

```
$ docker exec -ti postgres psql
```

## Uninstall

  ```
  $ docker-compose down -v
  ```
