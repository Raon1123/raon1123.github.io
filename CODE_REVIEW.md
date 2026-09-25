# 코드 리뷰: raon1123.github.io (Jekyll TeXt 테마 베이스라인)

> 작성일: 2026-06-05 · 대상: `main` (58a8945) + 로컬 미커밋 변경
>
> 베이스라인 배경: 이 저장소는 [kitian616/jekyll-TeXt-theme](https://github.com/kitian616/jekyll-TeXt-theme) v2.2.6을
> 통째로 포크(vendoring)한 구조이며, 업스트림 테마는 더 이상 유지보수되지 않음.
> 라이브 사이트는 **GitHub Pages 클래식 빌드**(Jekyll 3.10.0, `github-pages` gem)로 배포 중임을
> feed.xml의 generator 버전으로 확인함. 즉 **저장소의 Gemfile은 실제 배포에 사용되지 않는다.**

---

## Tier 1 — 라이브 사이트에서 실제로 깨져 있는 것 (즉시 수정 권장)

### 1.1 `url`에 프로토콜 누락 → sitemap/feed 전체 URL 깨짐 (실측 확인)
`_config.yml:20`
```yaml
url     : raon1123.github.io   # https:// 누락
```
실제 배포된 결과물에서 확인됨:
- `https://raon1123.github.io/sitemap.xml` → `<loc>raon1123.github.io/BOJ-3959.html</loc>` (스킴 없는 잘못된 URL — 검색엔진이 색인 불가)
- `feed.xml` → 모든 `<link href="raon1123.github.io/...">` 가 상대경로처럼 해석되어 RSS 리더에서 링크 깨짐

**수정:** `url: https://raon1123.github.io` 한 줄이면 sitemap, feed, canonical, OG 태그가 모두 복구됨. 이 리뷰에서 가장 비용 대비 효과가 큰 수정.

### 1.2 `index.html.old`가 라이브에 공개됨 (실측 확인)
`https://raon1123.github.io/index.html.old` → **HTTP 200**. 옛 홈페이지 front matter가 그대로 노출.
- `index.html.old` — git 추적 중 → 삭제 필요
- `index.html.backup` — 미추적(로컬만 존재). `index.html`과 diff 없이 동일하므로 삭제 가능
- `index.html` — **미커밋 수정 상태(M)**. 새 정적 홈페이지 작업분으로 보임 → 의도 확인 후 커밋 필요
- 재발 방지: `.gitignore`에 `*.backup`, `*.old` 추가

### 1.3 아바타 이미지 404 (실측 확인)
`_config.yml:36` → `avatar: "assets/unist.svg"` 인데 파일이 저장소에 없음 (`/assets/unist.svg` → 404).
라이브 `/blog/` 및 각 포스트 페이지의 HTML에 깨진 이미지로 실제 출력되는 것 확인. 존재하는 `assets/images/YunpyoAn_profile.jpg`(200 확인)로 교체하거나 SVG를 추가.

### 1.4 노후 CDN 의존성 (보안)
`_data/variables.yml:54-64` (unpkg 소스 — `_config.yml`의 `sources: unpkg`로 실제 사용 중):
- **jQuery 3.3.1** (2018) — 알려진 XSS CVE 2건(CVE-2019-11358, CVE-2020-11022/3) 이후 버전 → 3.7.x로 상향
- **MathJax 2.7.4** (2018) — v3/v4 대비 렌더링 수십 배 느림. `_includes/markdown-enhancements/mathjax.html`이 v2 API(`MathJax.Hub.Config`)를 쓰므로 업그레이드 시 include 수정 동반 필요
- `variables.yml:62` `valine: 'https//unpkg.com/...'` — **콜론 누락 오타** (업스트림 버그; valine 미사용이라 발현 안 했을 뿐)
- `variables.yml:44-53` bootcdn/bootcss URL — 미사용이지만 과거 공급망 이슈가 있던 CDN. 혼동 방지 차원에서 블록 제거 권장

---

## Tier 2 — 빌드 구성: 로컬과 프로덕션이 서로 다른 Jekyll을 돌리고 있음

### 2.1 `markdown: CommonMark` — 실제로는 동작하지 않는 거짓말 설정
`_config.yml:182` → `markdown: CommonMark` + Gemfile의 `commonmarker`.
그러나 CommonMark 변환기를 등록하는 플러그인 `jekyll-commonmark`가 `plugins:` 목록에 없고, GitHub Pages 클래식 빌드는 어차피 kramdown만 허용한다. 로컬도 `bundle exec jekyll serve` 시 같은 `github-pages` gem이 활성화되므로 **로컬·프로덕션 모두 사실상 kramdown으로 렌더링 중**이다.

즉 깨진 게 아니라 "설정 파일이 실제 렌더링 방식과 다르게 말하고 있는" 상태. 마크다운 문법 이슈를 디버깅할 때 엉뚱한 문서(CommonMark 스펙)를 보게 만드는 함정이므로:
- `markdown: CommonMark` 줄과 `commonmarker` gem을 제거해 kramdown으로 명시 통일 (권장)
- 정말 CommonMark을 원한다면 GitHub Actions 빌드 전환 + `jekyll-commonmark` 플러그인 추가가 전제 (Tier 4.1 참고)

### 2.2 Gemfile 정리
```ruby
gem 'jekyll'            # 미고정 — github-pages가 3.10으로 고정하므로 중복/혼란
gem "github-pages", ... # 실제 prod 환경 재현용 (유지한다면 이것 중심으로)
gem 'wdm', '>= 0.1.0'   # Windows 전용 gem인데 platforms 가드 없음 → Linux에서 bundle install 실패 가능
gemspec                 # 테마 gem 의존성 (rake ~> 10 등 골동품)
```
- `wdm`은 윗줄 `tzinfo-data`처럼 `platforms: [:mingw, :mswin, :x64_mingw]` 가드 필요 (현재 Linux 로컬 개발 차단 요인)
- `html-proofer`가 선언만 되고 어디서도 실행되지 않음 (Tier 4.3에서 활용 제안)
- **`Gemfile.lock`이 .gitignore에 있어 미커밋** → 재현 불가능한 로컬 빌드. 커밋 권장

### 2.3 `permalink: none`
포스트가 전부 루트 평면 URL(`/BOJ-3959.html`)로 생성됨. 의도라면 유지해도 되지만, 제목이 겹치는 순간 충돌하므로 `/blog/:title/` 같은 스코프 있는 형식 검토.

---

## Tier 3 — 죽은 코드 / 제거 대상

| 대상 | 상태 | 조치 |
|---|---|---|
| `.travis.yml` | Travis CI OSS 서비스 종료. 존재하지 않는 `docs/_config.yml` 참조, 존재하지 않는 `gh-pages` 브랜치로 배포 시도. Ruby 2.4.1(EOL 2020) | 삭제 |
| `.circleci/config.yml` | checkout + cache만 하고 아무것도 안 함 (no-op) | 삭제 |
| `package.json` scripts | 존재하지 않는 `docker/`, `docs/` 디렉토리 참조 12개. devDeps(husky 4, eslint 6, stylelint 13)는 2020년산으로 알려진 취약점 다수 | 테마 개발 안 하면 `package.json`, `.eslintrc`, `.stylelintrc*`, `.commitlintrc.js`, `.editorconfig` 일괄 제거 가능 |
| `jekyll-text-theme.gemspec` | 이 저장소는 사이트이지 테마 gem이 아님. gem 배포 기계장치 불필요 | 삭제 (Gemfile의 `gemspec` 줄도 함께) |
| `index.md` | `_config.yml:201`에서 `exclude` 처리된 죽은 파일. 내용은 새 정적 `index.html`에 흡수된 듯 | 의도 확인 후 삭제 |
| `_posts/_draft/` | Jekyll 표준은 최상위 `_drafts/` (그래야 `jekyll serve --drafts`로 미리보기 가능). 현 위치는 그냥 무시되는 디렉토리 | `_drafts/`로 이동 |
| `tools/` (assert-url.js 등) | 업스트림 테마의 릴리스 도구. 사이트 운영에 무관 | 삭제 |

업스트림 테마 자체에 대한 판단: 테마가 통째로 vendoring돼 있으므로 업스트림 중단으로 **당장 사이트가 죽지는 않음**. 다만 보안 패치·Jekyll 4 대응이 영영 없으므로, 장기적으로는 (a) 현 상태 동결 + 위 정리만 수행, (b) 유지보수되는 테마(Chirpy, Minimal Mistakes, al-folio 등)로 이주 중 하나를 결정해야 함. 콘텐츠가 표준 front matter 포스트 22개라 이주 비용은 낮은 편.

---

## Tier 4 — 추가하면 좋을 것

### 4.1 GitHub Actions 배포 워크플로 (죽은 CI 2개의 대체)
`.github/workflows/pages.yml`로 전환하면:
- Jekyll/Ruby 버전을 직접 통제 (클래식 빌드의 Jekyll 3.10 고정에서 해방)
- CommonMark 등 임의 플러그인 사용 가능 → Tier 2.1 불일치 근본 해소
- PR에서 빌드 검증 가능 (현재는 main에 머지돼야 빌드 성공 여부를 알 수 있음)

`actions/jekyll-build-pages` 또는 `ruby/setup-ruby` + `actions/deploy-pages` 표준 조합이면 충분.

### 4.2 Dependabot
`.github/dependabot.yml`에 `bundler`(+ Actions 도입 시 `github-actions`) 등록. 방치된 베이스라인에서 보안 업데이트를 자동 PR로 받는 최소 안전망.

### 4.3 html-proofer를 CI에 연결
이미 Gemfile에 있으므로 `bundle exec htmlproofer ./_site` 한 줄을 워크플로에 추가하면 깨진 내부 링크/이미지(1.3 같은 문제)를 배포 전에 잡는다.

### 4.4 MathJax 3 업그레이드
수학 포스트 시리즈(`2025-03-16-Math-Vector.md` 등)가 진행 중이므로 체감 효과 큼. `_includes/markdown-enhancements/mathjax.html`의 v2 설정(`MathJax.Hub.Config`, autoNumber)을 v3 문법으로 교체.

### 4.5 댓글: giscus
`comments.provider`가 꺼져 있고 후보였던 gitalk/valine은 둘 다 사실상 사장됨. GitHub Discussions 기반 giscus를 `provider: custom`(`_includes/comments-providers/custom.html`)으로 붙이는 것이 현재 표준.

### 4.6 문서화
`README.md`(352B)에 최소한의 운영 정보 추가: 배포 방식, 로컬 실행법(`bundle exec jekyll serve`), 디렉토리 구조(`logic/`, `math/` 같은 비표준 콘텐츠 디렉토리 포함), 포스트 작성 규칙(`<!--more-->` excerpt 구분자 등).

---

## 권장 순서 요약

1. **(5분)** `url:`에 `https://` 추가 + `index.html.old` 삭제 + avatar 경로 수정 — 라이브 버그 3건 해소
2. **(30분)** Tier 3 일괄 정리 (죽은 CI/도구/gemspec/백업 파일) + `Gemfile` 정리 + `Gemfile.lock` 커밋
3. **(반나절)** GitHub Actions 빌드 전환 + html-proofer + Dependabot
4. **(선택)** MathJax 3, giscus, 테마 이주 여부 결정

> 참고: 이 파일(`CODE_REVIEW.md`)도 현재 설정상 빌드 결과물에 복사되어 공개됩니다.
> 보관하려면 `_config.yml`의 `exclude:` 목록에 추가하세요.
