# README

## Getting started

1.clone
```
$ git clone git@github.com:YumaKimura/rspec-sample.git
```
2.start doker
```
$ docker-compose up -d
```
3.database migrations

```
$ docker exec -it [container name] /bin/bash
$ rake db:create
$ rake db:migrate
```
