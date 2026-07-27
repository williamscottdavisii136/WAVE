# WAVE Command Files

Command files are plain-text instruction sets consumed by `control.sh`. They are not shell scripts.

## Format

- One command per line.
- Blank lines and lines beginning with `#` are ignored.
- Files must remain beneath `commands/`.
- Only commands hard-coded in the `control.sh` read-only allowlist will run.

## Current allowlist

```text
pwd
date
date -u
whoami
uname -a
df -h
git status
git status --short
git branch --show-current
git log --oneline -5
gh auth status
gh repo view
gh run list --limit 10
```

## Execution

```sh
sh control.sh execute commands/system-audit.txt
```

Outputs and integrity receipts are written locally under `.wsd/receipts/`, which is excluded from Git tracking.
