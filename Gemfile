source 'https://rubygems.org'
ruby '2.1.2'

# Base
gem 'rails', '4.1.5' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 4.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1' # Use CoffeeScript for .js.coffee assets and views
gem 'turbolinks' # Turbolinks makes following links in your web application faster.
gem 'jbuilder', '~> 2.2' # Build JSON APIs with ease.

gem 'jquery-rails', '~>3.1'    # JqueryのRails版
gem 'bootstrap-sass', '~> 3.3' # twitter bootstrap3 のsass版
gem 'font-awesome-rails', '~> 4.2' # アイコンフォント
gem 'masonry-rails', '~>0.2' # タイルのサイズに合わせた自動配置
gem 'feedjira', '~> 1.5' # フィードの収集パース機能
gem 'devise', '~>3.4'    # 認証機能

group :doc do
  gem 'sdoc', '~>0.4', require: false # bundle exec rake doc:rails generates the API under doc/api.
end

group :production do
  gem 'pg', '~>0.15' # database - Postgres
  gem 'rails_12factor', '~>0.0.3' # HerokuでRails4を動かす
end

group :development, :test do
  gem 'sqlite3', '~>1.3' # Database - sqlite
  gem 'faker',  '~>1.4' # サンプルデータの作成
end

group :test do
  gem 'selenium-webdriver', '~>2.35'
  gem 'rspec-rails', '~>2.13' # テストフレームワーク
  gem 'capybara', '~>2.1' # specでブラウザ上の動きをエミュレート
end