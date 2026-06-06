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
  bad=$(grep -o '<link[^>]*href="[^"]*"' "$feed" \
        | sed 's/.*href="//;s/"$//' \
        | grep -E '(^raon1123\.github\.io|^http://raon1123\.github\.io|^/$|^/[^/])' \
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
exit $rc
