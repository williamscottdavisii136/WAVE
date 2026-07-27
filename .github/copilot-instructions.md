# GitHub Copilot Instructions

## Mandatory preflight

Before changing this repository, read in order:

1. `README.md`
2. `ZERO-COST-POLICY.md`
3. `SECURITY.md`
4. `docs/ARCHITECTURE.md`
5. `config/zero-cost.env`
6. `commands/README.md`
7. `control.sh`

## Controlling requirements

- Keep the repository private.
- Enforce `MAX_INCREMENTAL_SPEND_USD=0`.
- Do not add paid fallbacks, auto-top-up, recurring hosted-runner schedules, or unverified free-tier dependencies.
- Do not add raw secrets, credentials, recovery material, or secret values.
- Do not access or modify another repository at runtime.
- Do not merge WAVE with another project.
- Preserve one shell entry point only: `control.sh`.
- Do not create helper, split, generated, temporary, or alternate shell scripts.
- Prefer POSIX `sh` and tools available on macOS Monterey and Ubuntu.
- Keep core operation standalone; do not require browser hooks or localhost services.
- Default command execution must remain local and read-only.
- Maintain owner approval as the final control point.

## Required change record

Every material pull request must state the purpose, affected files, before-and-after behavior, `$0.00` incremental-spend impact, security impact, rollback procedure, and validation result.

## Acceptance gate

Run `sh control.sh validate`. Do not claim completion unless validation passes and the exact changed files are identified.
