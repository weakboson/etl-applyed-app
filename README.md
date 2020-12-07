# etl-applyed-app

```shell
$ docker-compose up
```

```shell
$ docker exec -it -u ${UID}:${GID} rails bash
# コンテナ内で
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:reset
```

```shell
$ docker exec -it ksqldb-cli ksql http://ksqldb-server:8088
```
