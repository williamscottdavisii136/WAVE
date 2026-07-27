# Security Policy

## Repository classification

Owner-controlled terminal project. The repository is intended to be private.

## Credential rules

- Do not commit passwords, personal access tokens, API keys, recovery codes, private keys, certificates, cookies, session material, or two-factor authentication data.
- Use provider-native secret stores or GitHub encrypted secrets only after explicit owner authorization.
- Store only secret names, masked identifiers, checksums, and provenance metadata.
- Never echo secret values into command outputs, Actions logs, issues, pull requests, or receipts.

## Command safety

- `control.sh` executes only the explicit read-only allowlist.
- Commands must be stored beneath `commands/`.
- Browser hooks and localhost services are not required.
- Cross-repository runtime access is denied.
- Paid fallback and automatic top-up are denied.
- Final approval remains with the owner.

## Change control

Material changes require a defined purpose, owner authorization, before-and-after hashes where applicable, a change receipt, rollback information, and confirmation that incremental spend remains `$0.00`.
