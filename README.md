# インストール方法

## インストール

### Ruby関連インストール

```shell
cd ruby-temp
bundle config set path 'vendor/bundle'
bundle install
```

### VUE関連インストール
```shell
cd vue/src
npm install
```

## コンパイル・起動

### Sinatraの起動
```shell
set RUBYOPT=-EUTF-8
bundle exec rackup -p 4567 -o 0.0.0.0
```

### VUEの起動
```shell
cd vue/src
npm run serve
```

### コンパイル
```shell
cd vue/src
npm run build
```

## 表示

### デバッグ時
```
http://localhost:8081/
```

ポート番号を変更する場合は、package.json に記載されている8081を変更する。


### 本番
```
http://localhost:4567/
```

ポート番号を変更するには、sinatra起動時の4567を変更するのと、
vue.config.jsのtargetに設定されている4567を変更する。
