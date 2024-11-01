## 実行コマンド

```ruby
# deviseをインストールする（ユーザー認証機能のgemを追加）
bundle install devise

# deviseの初期設定とUserモデルを生成する
# devise:install - deviseの設定ファイル生成
# devise user - ユーザーモデルとマイグレーションファイルを生成
rails g devise:install && rails g devise user

# ユーザーにroleカラム(整数型)を追加するマイグレーションを生成
# role:integer - 役割を数値で管理（例：0=一般ユーザー、1=管理者）
rails g migration AddRoleToUsers role:integer

# pagesコントローラーを生成し、homeとauditアクションを追加
# home - トップページ用のアクション
# audit - 監査ページ用のアクション
rails g controller pages home audit

# postリソースの基本的なCRUD機能を生成
# title - タイトル（文字列型）
# body:text - 本文（テキスト型）
# user:references - ユーザーとの関連付け（外部キー）
rails g scaffold post title body:text user:references
```