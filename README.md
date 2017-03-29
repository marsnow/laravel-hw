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
## 部署設定
使用 Heroku 免費!!
- 新增 Procfile（指定 DocumentRoot 位置）
``` Apache
web: vendor/bin/heroku-php-apache2 public/
```
- 新增 APP_KEY（因為 Git 不會追蹤 .env）
``` PHP
'key' => env('APP_KEY', 'SomeRandomStringWith32Characters'),
```

## 作業內容
### 功能要求

- 會員登入功能（使用 make:auth）
- 會員需區分一般使用者及管理員
- /post 留言板功能，可瀏覽、發佈貼文，限登入使用者使用
- /chat 使用者即時聊天功能，限登入使用者使用
- /manage 管理介面功能，限管理員可以編輯、刪除 post, chat 和 user

### 加分項目
依照難度排序

- /post 和 /chat 介面皆使用 AJAX 製作
- /manage 皆使用 AJAX 製作
- 使用 middleware 區分使用者及管理員
- 撰寫 db:seed 自動產生初始資料
- 使用 Laravel Socialite 支援 Facebook 登入
- 大部分介面採用 Vue.js Render


### 作業繳交方法
如果同學能提供已經上線運作的網址，可以另外實作一個 guest / guest 帳號，僅供唯獨檢視

