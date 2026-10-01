## General communication on my behalf

When sending messages on my behalf (Slack, email, PR comments, etc.), always clearly indicate the
message is sent by my AI agent by prefixing with a 🤖. This does not apply to PR descriptions.

## Referring to PRs

- Whenever you refer to a PR by its number — anywhere outside of GitHub: chat replies, Slack, docs — make the number a link to the PR (e.g. `[#36041](https://github.com/laneysmith/dotfiles/pull/36041)`), never a bare number.

## Referring to files and lines

- Whenever you refer to a file or specific lines in a GitHub-hosted repo — anywhere: chat replies, PR descriptions, comments, Slack, docs — include a link to it on GitHub, never just a bare path (e.g. `[README.md:3](https://github.com/laneysmith/dotfiles/blob/main/README.md?plain=1#L3)`).
- Use `#L<n>` / `#L<n>-L<m>` anchors for line references. Link the default branch by default; pin to a commit SHA when the reference must stay stable (e.g. PR comments about code that will change).
- For uncommitted or unpushed local changes, a local path is fine — say it's not on GitHub yet.

## PR communications (descriptions, comments, review replies)

- All PR-facing writing — descriptions, comments, review replies — must be concise and in plain language. Short paragraphs, no filler, no restating what the diff or thread already shows.
- No internal process jargon anywhere (e.g. migration "tiers", playbook section references). Explain stacking and merge order in plain language ("merges after X because the dropdown opens both modals").

## PR descriptions

- Always read and follow the repository's `.github/PULL_REQUEST_TEMPLATE.md`, if present, before creating or editing a PR description. Use its section headings, order, and instructions; never replace it with a custom structure.
- The body should include a short paragraph describing the shape of the change — don't enumerate every change with bullets, and don't list out the individual components/files touched (in prose either); that's easily discoverable in the diff. Add a small "Worth knowing" list only for quirks or gotchas a reviewer genuinely needs, and that aren't apparent from the code changes.
- Context: link only the single ticket most relevant to the PR, plus the other PRs for that same ticket and where this PR sits in their merge order and why. Don't mention parent/umbrella tickets, sibling tickets, or unrelated in-flight PRs.
- Merge order: when a PR must not merge before another, the dependent PR's description gets a task checklist gating the merge — one checkbox per prerequisite (e.g. `- [ ] Wait for [#37237](…) to merge`), including any deploy/verification steps that must happen in between. Prose alone isn't enough; the checklist is the source of truth.
- Test steps: the validation commands plus the one human flow worth exercising.
- Videos and Screenshots: for UI-changing PRs, present before/after screenshots side by side and make them as close to 1:1 as possible in viewport size and cropping. Prefer full-screen screenshots from the live baseline and PR preview; use Argos or Storybook story screenshots only when no live preview is available. Upload the images somewhere durable — never leave a placeholder table or only point to Argos/Storybook. A one-line coverage note is acceptable only when the PR has no visual change.

## Before/after screenshots in PRs (descriptions and comments)

- "Before" always shows the baseline — the PR's base branch (usually `main`); "After" shows the latest commit on the PR branch.
- Present them side by side in a table, captured at identical dimensions so the two images are easy to compare visually.
- Screenshots of PR previews or staging: capture the full screen.
- Screenshots of Argos/Storybook stories: crop out unnecessary whitespace.

## PR reviews

- When I ask you to review a PR, deliver the findings to me in chat only. Never post anything to the PR — no reviews, comments, inline suggestions, or approvals, on GitHub or any other host — unless I explicitly tell you to post. "Review this PR" alone is never permission to post.
- Always verify that the PR introduces no dead code, including unused imports, variables, functions, exports, branches, or files, and existing code or tests made unreachable or obsolete by the change. Search relevant call sites and references rather than assuming code is used.
- Always verify that unit tests are capable of failing and legitimately assert the behavior they are intended to cover; flag tautological, ineffective, or otherwise invalid tests.
- Always verify that each unit test's name accurately describes the behavior the test actually exercises and asserts.
