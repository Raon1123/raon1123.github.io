source "https://rubygems.org"

# Jekyll 4 with explicitly declared plugins (migrated off the github-pages gem;
# site is deployed via GitHub Actions, not the legacy Pages build).
gem "jekyll", "~> 4.3"

# Pin sass converter to 2.x (sassc): the TeXt theme SCSS uses `/` division,
# which dart-sass (jekyll-sass-converter >= 3.0) rejects.
gem "jekyll-sass-converter", "~> 2.0"

# Plugins listed in _config.yml plugins:.
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jemoji"
end

# Local preview server (Ruby 3 removed webrick from stdlib).
gem "webrick"

# Windows-only gems, guarded so Linux/macOS `bundle install` does not break.
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "wdm", ">= 0.1.0", platforms: [:mingw, :mswin, :x64_mingw]

# CI/test tooling.
gem "html-proofer", group: :test
