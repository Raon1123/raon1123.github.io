source "https://rubygems.org"

# Jekyll 4 with explicitly declared plugins (migrated off the github-pages gem;
# site is deployed via GitHub Actions, not the legacy Pages build).
gem "jekyll", "~> 4.3"

# Sass converter 3.x (dart-sass via sass-embedded >= 1.79, needed for
# color.adjust($space:) and color.to-gamut in the theme SCSS). The theme still
# uses @import, global built-in functions (map-get etc.) and the legacy if();
# Dart Sass 3.0 removes the first two, so migrate them before a Sass 3 upgrade.
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
