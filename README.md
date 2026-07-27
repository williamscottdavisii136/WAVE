# WAVE Terminal

Standalone, local-first terminal control system operating under a zero-incremental-cost policy.

## Operating model

- **Maximum incremental spend:** `$0.00`
- **Default execution:** local, owner-controlled, and open-source
- **Browser hooks:** not required
- **Localhost dependency:** not required
- **Paid fallback:** prohibited
- **Automatic top-up or reload:** prohibited
- **Unverified free tier:** prohibited
- **Cross-repository runtime access:** denied
- **Public deployment:** denied unless the owner expressly authorizes it
- **Human approval:** final authority remains with the repository owner
- **Shell entry points:** one `control.sh` only; no helper or split shell scripts

## Implemented foundation

- Single WAVE command engine in `control.sh`
- Local command inventory and execution receipts
- Repository-specific GitHub Copilot instructions
- Zero-cost enforcement policy
- Credential and secret-handling controls
- Manual GitHub Actions validation with no recurring schedule

## Commands

```sh
sh control.sh validate
sh control.sh status
sh control.sh inventory
sh control.sh execute <command-file>
```

The execution path validates the command file, records a receipt under `.wsd/receipts/`, and blocks network-paid or cross-repository operations unless they are explicitly authorized and independently verified as zero incremental cost.

## Repository boundary

WAVE controls only this repository and the owner-approved local terminal context. It must not merge with or silently control another project.
