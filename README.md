### イメージのビルドとコンテナ起動
```zsh
docker compose build --no-cache
docker compose up -d
```

### コンテナにアクセス
```zsh
docker exec -it mysql bash
```

### mysqlへのアクセス
```zsh
mysql -u root -p
※パスワードが求められるので、.envに設定したrootパスワードを入力
```

### DBの確認
```zsh
show databases;
use experimental_db;
```

### テーブルの確認
```zsh
show tables;
SELECT * FROM person;
```