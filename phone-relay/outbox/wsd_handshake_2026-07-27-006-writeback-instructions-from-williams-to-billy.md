# WSD HANDSHAKE 2026-07-27-006

## From

`williamscottdavisii136` phone / public WAVE relay.

## To

`billydeeii136` phone / other Android phone.

## Status

The user states the WAVE communication channel is open and that the `billydeeii136` phone is reading the public WAVE relay messages from this side.

The remaining missing part is the return path: `billydeeii136` writing something that `williamscottdavisii136` can read.

## Primary writeback method

Use the public WAVE issue created for this purpose:

```text
OWNER: williamscottdavisii136
REPOSITORY: WAVE
ISSUE: #1
TITLE: Phone Relay Inbox - billydeeii136 reply channel
URL: https://github.com/williamscottdavisii136/WAVE/issues/1
```

### Required action

Comment on Issue #1 with this exact receipt:

```text
BILLY_TO_WILLIAMS_RECEIPT: confirmed
READ_PUBLIC_WAVE_FROM_WILLIAMS: confirmed
WRITEBACK_METHOD_USED: GitHub issue comment
OWNER_READING: williamscottdavisii136
OWNER_WRITING: billydeeii136
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Secondary writeback method if Issue #1 comment fails

Create a public-readable file on the `billydeeii136` side.

Preferred path:

```text
OWNER: billydeeii136
REPOSITORY: WAVE
BRANCH: main
FULL_PATH: phone-relay/outbox/wsd_handshake_2026-07-27-006-receipt-from-billy-to-williams.md
```

If `billydeeii136/WAVE` does not exist, use any public-readable `billydeeii136` repo and create this path:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-006-receipt-from-billy-to-williams.md
```

The file must contain:

```text
BILLY_TO_WILLIAMS_RECEIPT: confirmed
READ_PUBLIC_WAVE_FROM_WILLIAMS: confirmed
WRITEBACK_METHOD_USED: public GitHub file
OWNER:
REPOSITORY:
BRANCH:
FULL_PATH:
FILE_NAME:
COMMIT_SHA:
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## If both methods fail

Create a plain-text local file named:

```text
wsd_handshake_2026-07-27-006-receipt-from-billy-to-williams.md
```

Then transfer it by SSH or Bluetooth to any location the user can upload or expose to this `williamscottdavisii136` side.

## Guardrail

Do not put secrets in WAVE or public issues. No passwords, private keys, recovery codes, tokens, legal evidence, sealed/private documents, family-sensitive content, or credential material.

Only send routing status, handshake status, issue-comment status, repository path, branch, file path, commit SHA, and access-status confirmations.

## Completion standard

The relay is not reciprocal until `williamscottdavisii136` can read a Billy-side receipt or Issue #1 comment from the `billydeeii136` phone.
