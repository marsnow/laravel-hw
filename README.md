# laravel-hw
作業題目：使用 Laravel 架構一個完整的後端網站

## 環境設定
使用 Docker 保持環境一致
- 初始化：
``` bash
$ composer create-project --prefer-dist laravel/laravel laravel-hw
$ docker build --rm -t laravel-hw .
$ docker-compose up -d
```
- 已經 create-project 過
``` bash
$ docker build --rm -t laravel-hw .
$ docker-compose up -d
$ composer install
```
