FROM ruby:2.7.1

WORKDIR coderxio-site

COPY Gemfile Gemfile.lock ./
Run bundle install

COPY . .

CMD bundle exec jekyll serve --livereload_port 4001 --config _config_dev.yml
