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
# 1. Build
bundle exec jekyll build

# 2. Check internal links, images, and scripts
bundle exec htmlproofer ./_site \
  --disable-external \
  --allow-hash-href \
  --checks Links,Images,Scripts \
  --ignore-empty-alt

# 3. Regression assertions (sitemap/feed URLs, no leaked files, avatar)
bash script/site-checks.sh
```

---

## Deployment

Pushes to `main` are automatically built, tested, and deployed via GitHub Actions (`.github/workflows/pages.yml`):

1. The **test** job builds the site and runs html-proofer and `script/site-checks.sh`.
2. The **deploy** job (only on push to `main`, after test passes) uploads the built `_site/` to GitHub Pages.

Pull requests against `main` or `dev` run the test job only — no deployment.

**One-time setup:** In the repository Settings → Pages, set the source to **GitHub Actions**.

Dependabot (`.github/dependabot.yml`) keeps Bundler gems and Actions versions up to date weekly.
