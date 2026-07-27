# Architecture

## Purpose

WAVE is a standalone, local-first terminal control surface with a hard `$0.00` incremental-spend ceiling.

## Control flow

1. The owner places approved read-only commands in a text file beneath `commands/`.
2. `control.sh` validates repository structure and zero-cost controls.
3. Each command is checked against the explicit allowlist.
4. Approved commands run locally without a browser hook or localhost service.
5. Output and a machine-readable receipt are stored beneath `.wsd/receipts/`.
6. The owner reviews all output and retains final approval.

## Components

### `control.sh`

The only shell entry point. It validates the repository, inventories local tools, enforces the read-only command allowlist, hashes command inputs and outputs, and writes execution receipts.

### Command files

Command files are plain text, stored under `commands/`, and contain one allowlisted command per line. They are not shell scripts and cannot expand the allowlist.

### Receipts

Receipts record timestamps, hashes, the local execution mode, repository boundary, cost, and approval requirement. Raw credentials are prohibited.

### GitHub Actions

The validation workflow is manual-only. It has no schedule and no automatic push trigger. The owner must verify included minutes and billing controls before dispatch.

## Isolation

WAVE controls only this repository and the owner-approved local terminal context. Runtime access to other repositories is denied.

## Cost boundary

Unknown cost is blocked. Network-paid services, automatic top-up, metered fallbacks, and auto-provisioned infrastructure are prohibited.
