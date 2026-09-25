#!/usr/bin/env bash
# Regression assertions run against the built _site directory.
# Usage: bash script/site-checks.sh [site_dir]
# Exits non-zero if any check fails.

set -uo pipefail

site="${1:-_site}"
rc=0

# ---------------------------------------------------------------------------
# Helper: print ok or FAIL, accumulate failures
# ---------------------------------------------------------------------------
pass() { printf '[ok]   %s\n' "$1"; }
fail() { printf '[FAIL] %s\n' "$1"; rc=1; }

# ---------------------------------------------------------------------------
# Check (a): Every <loc> in sitemap.xml starts with https://raon1123.github.io
# ---------------------------------------------------------------------------
sitemap="$site/sitemap.xml"
if [ ! -f "$sitemap" ]; then
  fail "sitemap.xml not found at $sitemap"
else
  # Extract text content of <loc> tags
  bad=$(grep -o '<loc>[^<]*</loc>' "$sitemap" \
        | sed 's|<loc>||;s|</loc>||' \
        | grep -v '^https://raon1123\.github\.io' \
        || true)
  if [ -n "$bad" ]; then
    fail "sitemap.xml: found <loc> entries not starting with https://raon1123.github.io:"
    printf '         %s\n' $bad
    rc=1
  else
    pass "sitemap.xml: all <loc> entries start with https://raon1123.github.io"
  fi
fi

# ---------------------------------------------------------------------------
# Check (b): Every href attribute in feed.xml pointing at the site is an
#            absolute https:// URL (no scheme-less or bare-relative links)
# ---------------------------------------------------------------------------
feed="$site/feed.xml"
if [ ! -f "$feed" ]; then
  fail "feed.xml not found at $feed"
else
  # Only structural <link href="..."> elements: relative URLs inside CDATA
  # post content are valid per Atom spec (resolved against xml:base)
  # Flag any href that does NOT start with https:// (includes http://, //host,
  # /absolute-path, and scheme-less hostnames)
  bad=$(grep -o '<link[^>]*href="[^"]*"' "$feed" \
        | sed 's/.*href="//;s/"$//' \
        | grep -vE '^https://' \
        || true)
  if [ -n "$bad" ]; then
    fail "feed.xml: found href values that are not absolute https:// URLs:"
    printf '         %s\n' $bad
    rc=1
  else
    pass "feed.xml: all <link> href values are absolute https:// URLs"
  fi
fi

# ---------------------------------------------------------------------------
# Check (c): No *.old or *.backup files anywhere under _site/
# ---------------------------------------------------------------------------
leaked=$(find "$site" \( -name '*.old' -o -name '*.backup' \) -print)
if [ -n "$leaked" ]; then
  fail "Found leaked *.old / *.backup files under $site:"
  printf '         %s\n' $leaked
  rc=1
else
  pass "No *.old or *.backup files found under $site"
fi

# ---------------------------------------------------------------------------
# Check (d): avatar path from _config.yml exists inside _site/
# ---------------------------------------------------------------------------
config="_config.yml"
if [ ! -f "$config" ]; then
  fail "_config.yml not found (expected at $config)"
  rc=1
else
  # Match the avatar: line (may have leading whitespace and aligned spaces before colon)
  # Strip inline comment first, then trim whitespace, then strip surrounding quotes
  avatar_raw=$(grep -m1 '^[[:space:]]*avatar[[:space:]]*:' "$config" \
               | sed 's/[[:space:]]*#.*//' \
               | sed 's/^[[:space:]]*avatar[[:space:]]*:[[:space:]]*//' \
               | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' \
               | sed "s/^['\"]//;s/['\"]$//")

  if [ -z "$avatar_raw" ]; then
    fail "_config.yml: could not parse avatar: value"
    rc=1
  else
    avatar_file="$site/$avatar_raw"
    if [ -f "$avatar_file" ]; then
      pass "avatar file exists: $avatar_file"
    else
      fail "avatar file missing: $avatar_file (avatar: $avatar_raw)"
      rc=1
    fi
  fi
fi

# ---------------------------------------------------------------------------
# Check (e): No agent/tooling config or repo-internal files published.
#            Agent settings (.claude/, CLAUDE.md, AGENTS.md, ...) must never be
#            deployed, even if they exist in the working tree.
# ---------------------------------------------------------------------------
leaked=$(find "$site" \( -name '.claude' -o -name '.codex' -o -name '.cursor' \
                         -o -name '.ruby-lsp' -o -name '.github' -o -name '.git' \
                         -o -name 'CLAUDE.md' -o -name 'CLAUDE.local.md' \
                         -o -name 'AGENTS.md' -o -name 'CODE_REVIEW.md' \
                         -o -name 'BACKLOG.md' -o -name 'Gemfile' -o -name 'Gemfile.lock' \
                         -o -name '_drafts' -o -name 'script' \) -print)
if [ -n "$leaked" ]; then
  fail "Found agent config or repo-internal files under $site:"
  printf '         %s\n' $leaked
else
  pass "No agent config or repo-internal files under $site"
fi

# ---------------------------------------------------------------------------
# Check (f): Site layout: root is the static profile page, blog lives at /blog/
# ---------------------------------------------------------------------------
if grep -q '<title>Yunpyo An</title>' "$site/index.html" 2>/dev/null; then
  pass "/index.html is the profile page"
else
  fail "/index.html missing or is not the profile page"
fi
if [ -f "$site/blog/index.html" ]; then
  pass "/blog/index.html exists"
else
  fail "/blog/index.html not found"
fi

# ---------------------------------------------------------------------------
exit $rc
