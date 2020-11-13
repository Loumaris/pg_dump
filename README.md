# pg_dump

... via docker!

## usage

create an env file `dump.env` like this:

```
PGUSER=
PGPASSWORD=
PGHOST=
PGDB=
```

and run it like this:

```
docker run -ti --rm -v ${PWD}/backup:/dump --env-file=dump.env loumaris/pg_dump dump
```

this will create a postgres dump inside your current directory.