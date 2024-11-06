FROM ruby:3.0

# 所有者をホストとコンテナで一致させる
# USER_ID, GROUP_ID はデフォルト値を一旦指定
ARG USER_NAME=blackjack
ARG USER_ID=1000
ARG GROUP_ID=1000

# コンテナ内でユーザーとグループを作成する
RUN groupadd -g ${GROUP_ID} ${USER_NAME} && \
    useradd -m -u ${USER_ID} -g ${GROUP_ID} ${USER_NAME}

WORKDIR /app

# -qq は出力を減らすためのコマンド
# nodejs は Ruby on Rails でフロントエンドのアセット管理をする際に必要になるケースがある
RUN apt-get update -qq && apt-get install -y nodejs

# プロジェクトの基本情報や依存関係をセット記述したファイル(Gemfile, Gemfile.lock) をコピー
#COPY Gemfile* ./

# gem は pip, bundler は poetry のイメージ
#RUN gem install bundler && bundle install

COPY . .

# ファイルの所有者を変更する
RUN chown -R ${USER_NAME}:${USER_NAME} //app

# 作成したユーザーへの切り替えを行う
USER ${USER_NAME}

# Ruby の対話的な実行環境を起動
CMD ["irb"]