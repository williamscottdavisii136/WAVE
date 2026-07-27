# GitHub Copilot Instructions

## Mandatory preflight

Before changing this repository, read in order:

1. `README.md`
2. `REPOSITORY_ACTIVATION_STATUS.md`
3. `ZERO-COST-POLICY.md`
4. `SECURITY.md`
5. `docs/ARCHITECTURE.md`
6. `config/zero-cost.env`
7. `commands/README.md`
8. `control.sh`

## Repository role

`williamscottdavisii136/WAVE` is a public, non-secret relay and status repository. It exists for routing, acknowledgments, return receipts, repository paths, issue references, and commit references only.

## Controlling requirements

- Keep the repository public-only and non-secret.
- Do not place private legal evidence, sealed/private materials, medical information, family-sensitive material, passwords, tokens, recovery codes, private keys, credentials, or private account details in this repository.
- Enforce `MAX_INCREMENTAL_SPEND_USD=0`.
- Do not add paid fallbacks, auto-top-up, recurring hosted-runner schedules, or unverified free-tier dependencies.
- Do not access or modify another repository at runtime.
- Do not merge WAVE with another project.
- Preserve one shell entry point only: `control.sh` if present.
- Prefer POSIX `sh` and tools available on macOS Monterey and Ubuntu.
- Keep core operation standalone; do not require browser hooks or localhost services.
- Default command execution must remain local and read-only.
- Maintain owner approval as the final control point.

## Activation requirements

- Keep `REPOSITORY_ACTIVATION_STATUS.md` current.
- Keep `control/repository-map.md` current.
- Keep a repository-health workflow available for manual or push validation.
- Every open-line relay message must report receipt, action taken, result, blocker, and next action.

## Required change record

Every material pull request or direct commit must state the purpose, affected files, before-and-after behavior, `$0.00` incremental-spend impact, security impact, rollback procedure, and validation result.

## Acceptance gate

Run `sh control.sh validate` if available. If it is not available, use the repository-health workflow or manually verify that the activation status, control map, and public-only boundaries remain intact.
