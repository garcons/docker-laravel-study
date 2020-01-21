# docker-laravel-study

# 環境構築

1. [Docker](https://docs.docker.com/)を DL してインストール
1. 本 GitHub の「Clone or download」から「Download ZIP」を押して ZIP をダウンロード（master ブランチ）
1. ローカルの適当なフォルダに解凍
1. ターミナルで上記フォルダに移動（docker-laravel-study の中）
1. ターミナルで以下のコマンドを叩いていく
   1. `docker-compose up -d`
   1. `cp src/.env.example src/.env`
   1. `chmod -R a+w src/storage/*`
   1. `docker-compose run composer install --prefer-dist --no-interaction`
   1. `docker-compose exec php-fpm php artisan key:generate`
1. [http://localhost:8080/](http://localhost:8080/)にアクセスし、Laravel の画面がでれば OK

# コマンドリファレンス

すべて docker-laravel-study 直下で実行します。

### Docker の起動

`docker-compose up -d`

### Docker の終了

`docker-compose down`

### artisan コマンド叩くとき

`docker-compose exec php-fpm php artisan xxxxxx`

### docker コンテナにログインするとき

`docker exec -it test-php-fpm /bin/ash`

### test を実行するとき

docker コンテナにログインしている状態(tests/の後ろは流したいテストファイル。ディレクトリ指定で配下の xxxTest.php を全部テスト。)

`./vendor/bin/phpunit tests/Unit/Facades/DistanceTest.php`

# 用意するもの

- [Advanced REST client（Chrome 拡張）](https://install.advancedrestclient.com/install) API を確認するために使うツールです
- [DBeaver（Mac の方）](https://dbeaver.io/) DB につなぐツールです
- [A5M2（Windows の方）](https://a5m2.mmatsubara.com/)DB につなぐツールです

# DB の内容確認

DBeaver/A5M2 をインストールしたら、データベースの接続情報に以下を設定すれば確認できます。

- ホスト: localhost
- ポート: 33306
- DB 名: test-db
- DB ユーザ名: test-user
- パスワード: secret
