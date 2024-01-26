# ひらがな変換api

## 概要仕様
- ひらがな変換apiを利用して日本語をひらがなに変換するアプリです
  - テキストフィールドに、漢字・カタカナなどを入力
  - 下にあるボタンを押す
  - テキストフィールドに入力した文字列がひらがなに変換される
  - 変換されたひらがなが画面に表示される

## 実装方法
- [ここ](https://labs.goo.ne.jp/api/jp/hiragana-translation/)で登録してapi key取得してください
- 取得したapi keyを使って `env/.env_example` を参考に `env/.env_dev` を作成して下さい


## ディレクトリ概要
- repository: データ取得を行う処理がまとまる
- foundation:
  - api_client.dart: web apiからデータを取得するためのclientコード。apiを簡単に叩けるようにしたもの
  - dot_env_service.dart: flutter_dotenvパッケージのラッパクラス