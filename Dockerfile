FROM ruby:2.7.0

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
RUN gem install bundler:2.3.12

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock jekyll-text-theme.gemspec ./
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve"]
