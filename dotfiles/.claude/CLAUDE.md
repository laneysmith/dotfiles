## General communication on my behalf

When sending messages on my behalf (Slack, email, PR comments, etc.), always clearly indicate the
message is sent by my AI agent by prefixing with a 🤖. This does not apply to PR descriptions.

## PR Descriptions

- Be concise. Follow any repo template if provided. Include a short paragraph describing the shape
  of the change. Do not enumerate every change with bullets. Add a small "gotchas" or "worth
  knowing" list only for quirks that aren't apparent from the code changes or code comments.
- No internal process jargon (e.g., migration tiers, playbook references).
- Explain stacking and merge order in plain language ("merges after PR #X and PR #Y because both
- Always link related PRs and tickets, and say where the PR sits in its merge order and why.
  contain prerequisite work).
- Test steps: the validation commands plus the one human flow worth exercising. No placeholder
  before/after screenshot takes.
