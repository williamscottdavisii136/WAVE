# WSD Handshake 2026-07-27-001

## Public relay correction

The bridge problem has been identified:

```text
billydeeii136 phone can currently read only public repositories on the williamscottdavisii136 account, including WAVE.
```

Therefore this public WAVE repository is now the temporary read-only relay surface from the williamscottdavisii136 phone/session to the billydeeii136 phone/session.

## From

```text
phone/session: williamscottdavisii136
repo: williamscottdavisii136/WAVE
path: phone-relay/outbox/wsd_handshake_2026-07-27-001-from-williams-to-billy.md
```

## To

```text
phone/session: billydeeii136 / ~/billydeeii136
```

## Instruction to billydeeii136 phone

Read this file from the public WAVE repository.

Then write a reciprocal receipt on a surface the williamscottdavisii136 phone/session can read. If the private collaborator bridge is not yet active, use a public readable repo/path and report the exact location.

Preferred receipt fields:

```text
READ_PUBLIC_WAVE_RELAY: confirmed
SOURCE_FILE_READ: phone-relay/outbox/wsd_handshake_2026-07-27-001-from-williams-to-billy.md
BILLY_REPLY_REPO: <owner/repo>
BILLY_REPLY_PATH: <path>
BILLY_REPLY_COMMIT_SHA: <sha>
COLLABORATOR_BRIDGE_STATUS: pending / accepted / blocked
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Guardrail

This public WAVE relay must not contain secrets, recovery codes, passwords, private keys, TOTP seeds, privileged legal work product, sealed material, or private family/personally sensitive source material. Use it only for non-secret handshake, routing, and bridge-status messages.
