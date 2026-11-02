#!/usr/bin/env bash
# Run the CI test job (bundle-audit, jekyll build, html-proofer, site-checks)
# inside the same Ruby version as CI, in Docker. Use this where native Ruby
# cannot run html-proofer, e.g. Windows without libcurl (#116).
# Usage: bash script/docker-check.sh
# Requires Docker. Gems are cached in the named volume "raon1123-bundle";
# remove it with `docker volume rm raon1123-bundle` to start clean.

set -euo pipefail

# Keep in sync with ruby-version in .github/workflows/pages.yml.
ruby_image="ruby:3.3.4"

repo="$(cd "$(dirname "$0")/.." && pwd)"

# Git Bash on Windows rewrites /container/paths into Windows paths; turn that off.
export MSYS_NO_PATHCONV=1

# linux/amd64 matches the x86_64-linux-gnu platform locked in Gemfile.lock.
# The site is built into /tmp/_site inside the container, so the host _site/
# is left untouched. BUNDLE_FROZEN fails instead of rewriting Gemfile.lock.
docker run --rm \
  --platform linux/amd64 \
  -v "$repo":/srv/site \
  -v raon1123-bundle:/usr/local/bundle \
  -w /srv/site \
  -e JEKYLL_ENV=production \
  -e BUNDLE_FROZEN=true \
  "$ruby_image" \
  bash -euo pipefail -c '
    bundle install --jobs 4 --quiet
    bundle exec bundle-audit check --update
    bundle exec jekyll build --destination /tmp/_site
    bundle exec htmlproofer /tmp/_site --disable-external --checks Links,Images,Scripts --allow-missing-href --no-enforce-https
    bash script/site-checks.sh /tmp/_site
  '
