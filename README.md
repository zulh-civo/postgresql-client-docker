## About

Minimal PostgreSQL client Docker image:

* Built on top of `alpine` base image
* ~6 MB in size (5 MB base + 1 MB)

## Usage

```bash
$ docker run -it --rm zulhcivo/postgresql-client postgresql://user:pass@host:5432/db
...
```

To override `psql` and call pg_dump instead:

```bash
$ docker run -v /path/for/backup:/var/pgdata -it --rm --entrypoint pg_dump \   
zulhcivo/postgresql-client -h host -U user -f /var/pg_data/mydump.sql db
...
```

## Note

This project is based on https://hub.docker.com/r/jbergknoff/postgresql-client which uses older `psql` version.
