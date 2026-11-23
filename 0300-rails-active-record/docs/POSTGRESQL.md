# PostgreSQL のセットアップと操作

Docker Compose で PostgreSQL を起動し、コンテナ内の `psql` を使って日本語の保存・表示を確認します。Docker Desktop など、Docker Compose が使える環境を用意してください。Rails アプリはホスト上で実行します。

## 1. Compose ファイルを用意する

作成する Rails アプリのルートに `compose.yaml` を作り、次を記載します。

```yaml
services:
  postgres:
    image: postgres:17-alpine
    environment:
      POSTGRES_USER: movie_reservation
      POSTGRES_PASSWORD: movie_reservation
      POSTGRES_DB: movie_reservation_development
      POSTGRES_INITDB_ARGS: "--encoding=UTF8 --locale=C.UTF-8"
      LANG: C.UTF-8
      PGCLIENTENCODING: UTF8
    ports:
      - "127.0.0.1:${POSTGRES_HOST_PORT:-55432}:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U movie_reservation -d movie_reservation_development"]
      interval: 5s
      timeout: 5s
      retries: 12

volumes:
  postgres_data:
```

ユーザー名とパスワードはローカル開発専用の値です。本番環境には使用しないでください。PostgreSQL のデータは名前付きボリュームに保存されます。

## 2. 起動して接続する

`compose.yaml` があるディレクトリで実行します。

```bash
docker compose up -d
docker compose exec postgres pg_isready -U movie_reservation -d movie_reservation_development
docker compose exec postgres psql -U movie_reservation -d movie_reservation_development
```

`pg_isready` が接続を受け付ける状態になってから `psql` を実行してください。ホスト上の Rails からは `127.0.0.1:55432` に接続します。ポートを変更する場合は Compose と Rails の両方に同じ `POSTGRES_HOST_PORT` を設定してください。

## 3. 日本語の保存・表示を確認する

`psql` の入力画面で、以下を順に実行します。

```sql
SHOW server_encoding;
SHOW client_encoding;
CREATE TEMP TABLE japanese_test (name text);
INSERT INTO japanese_test (name) VALUES ('日本語の映画');
SELECT name FROM japanese_test;
```

最初の2つの結果が `UTF8` で、最後の結果に `日本語の映画` が表示されることを確認します。一時テーブルは接続を終了すると消えます。`psql` は `\q` で終了できます。

PostgreSQL の文字コードとロケールはデータ領域の初回作成時に決まるため、既存のボリュームには `POSTGRES_INITDB_ARGS` の変更は適用されません。既存環境では上記の `SHOW` で確認してください。この設定は日本語を保存・表示するためのもので、日本語の辞書順の並び替えを保証するものではありません。

## 4. 停止する

```bash
docker compose stop
```

停止してもデータはボリュームに残ります。再開する場合は同じディレクトリで `docker compose up -d` を実行します。
