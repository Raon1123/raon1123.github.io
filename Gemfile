source "https://rubygems.org"

# Build base: matches GitHub Pages production build (Jekyll 3.10.x). Keeps rendering parity.
gem "github-pages", group: :jekyll_plugins

# Local preview server (Ruby 3 removed webrick from stdlib).
gem "webrick"

# Windows-only gems, guarded so Linux/macOS `bundle install` does not break.
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "wdm", ">= 0.1.0", platforms: [:mingw, :mswin, :x64_mingw]

# CI/test tooling.
gem "html-proofer", group: :test
