# Yunpyo An's Blog

Personal blog at [raon1123.github.io](https://raon1123.github.io), built with Jekyll using a vendored fork of the [TeXt theme](https://github.com/kitian616/jekyll-TeXt-theme). Written in Korean with some English content. MathJax v3 is loaded for posts that contain math.

---

## Local Development

**Prerequisites:** Ruby (3.3.x recommended)

```bash
gem install bundler
bundle install
bundle exec jekyll serve
```

The site is available at http://localhost:4000.

To preview draft posts in `_drafts/`:

```bash
bundle exec jekyll serve --drafts
```

---

## Writing Posts

- Published posts go in `_posts/` with filenames in the form `YYYY-MM-DD-title.md`.
- Draft posts go in `_drafts/` (no date prefix required). Preview them with `--drafts`.
- Use `<!--more-->` as the excerpt separator to control what appears on the post listing.

---

## Testing

Build the site and run all checks before pushing:

```bash
# 0. Security audit of Gemfile.lock (Ruby Advisory Database)
bundle exec bundle-audit check --update

# 1. Build
bundle exec jekyll build

# 2. Check internal links, images, and scripts
bundle exec htmlproofer ./_site \
  --disable-external \
  --checks Links,Images,Scripts \
  --allow-missing-href=true \
  --enforce-https=false

# 3. Regression assertions (sitemap/feed URLs, no leaked files, avatar,
#    no agent config such as .claude/ or CLAUDE.md in _site, page layout)
bash script/site-checks.sh
```

Notes:

- CI uses Ruby 3.3.4 on Linux. Some locked gems (e.g. `async`) need Ruby >= 3.3, so on an
  older local Ruby `bundle install` rewrites `Gemfile.lock`; do not commit that rewrite.
- html-proofer needs libcurl, which native Windows Ruby lacks. On Windows, run step 2 in
  WSL or rely on CI.
- Agent/tooling settings (`.claude/`, `CLAUDE.md`, `AGENTS.md`, ...) are git-ignored and
  excluded from the Jekyll build; `site-checks.sh` fails if any of them reach `_site/`.

---

## Deployment

Builds, tests, and deployment run in GitHub Actions (`.github/workflows/pages.yml`):

1. The **test** job runs on every push, pull request, manual dispatch, and a weekly schedule.
   It runs `bundle-audit`, builds the site, then runs html-proofer and `script/site-checks.sh`.
2. The **deploy** job runs only on push to `main`, after the test job passes, and uploads `_site/`
   to GitHub Pages. Only this job holds the `pages: write` / `id-token: write` permissions.

**One-time setup:** In the repository Settings → Pages, set the source to **GitHub Actions**.

Dependabot (`.github/dependabot.yml`) keeps Bundler gems and Actions versions up to date weekly (minor/patch bumps grouped into one PR).
