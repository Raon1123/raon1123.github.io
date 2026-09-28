source "https://rubygems.org"

# Jekyll 4 with explicitly declared plugins (migrated off the github-pages gem;
# site is deployed via GitHub Actions, not the legacy Pages build).
gem "jekyll", "~> 4.3"

# Sass converter 3.x (dart-sass via sass-embedded). The TeXt theme SCSS uses
# `/` division, darken() and @import, which Sass 1.x accepts with deprecation
# warnings; Sass 2.0 will reject them, so the theme SCSS must be migrated first.
gem "jekyll-sass-converter", "~> 3.1"

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
group :test do
  gem "html-proofer"
  # Checks Gemfile.lock against the Ruby Advisory Database (CVE audit).
  gem "bundler-audit"
end
