FROM ruby:3.0

WORKDIR /app

# -qq は出力を減らすためのコマンド
# nodejs は Ruby on Rails でフロントエンドのアセット管理をする際に必要になるケースがある
RUN apt-get update -qq && apt-get install -y nodejs

# プロジェクトの基本情報や依存関係をセット記述したファイル(Gemfile, Gemfile.lock) をコピー
#COPY Gemfile* ./

# gem は pip, bundler は poetry のイメージ
#RUN gem install bundler && bundle install

COPY . .

# Ruby の対話的な実行環境を起動
CMD ["irb"]