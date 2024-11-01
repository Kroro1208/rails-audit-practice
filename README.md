## 実行コマンド
```ruby
bundle install devise
rails g devise:install && rails g devise user
rails g migration AddRoleToUsers role:integer
rails g controller pages home audit
rails g scaffold post title body:text user:references
```