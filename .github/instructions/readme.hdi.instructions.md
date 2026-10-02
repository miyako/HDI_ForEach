---
description: "Uniform README layout for all HDI (How Do I) example repositories -- developer-facing summary, no session or token notes"
---

# HDI README -- Agent Rules

This supersedes `readme.branches.instructions.md` and `readme.usage.guidance.instructions.md`. Do **not** put branch tables, token usage, model/mode assessments, or prompt notes in the README.

Use exactly these sections, in this order. Omit a section only if it genuinely has no content.

1. `# <RepoName>` followed by badges (4D version, platform, license).
2. A bold one-line question: **How do I ...?**, then one sentence on what the project is.
3. `## Overview` -- what the demo shows; a table of scenarios if there are several.
4. `## Requirements` -- minimum 4D version and any licences (e.g. 4D View Pro, 4D Write Pro).
5. `## Getting started` -- numbered steps to open and run.
6. `## Points of interest` -- bullets naming the key files/methods and the technique each demonstrates.
7. `## Project structure` -- short annotated tree.
8. `## References` -- blog post, original download, relevant docs.
9. `## License`.

Rules:
- Only state facts verifiable in the repo; do not invent features, versions, or links.
- Link to real files with repo-relative paths.
- ASCII punctuation only; keep it concise (aim for under ~100 lines).
