# WSD Handshake 2026-07-27-004

## From

`williamscottdavisii136` phone / current ChatGPT-GitHub connector side.

## To

`billydeeii136` phone / other Android phone side.

## Purpose

Tell the other phone exactly where to write so this `williamscottdavisii136` side can read the reply.

## Current confirmed channel

The public WAVE relay is readable by the other phone:

```text
williamscottdavisii136/WAVE/phone-relay/outbox/
```

## Reply instruction for billydeeii136 phone

Write the reciprocal receipt in a public-readable GitHub repository controlled by `billydeeii136`.

Preferred exact reply location:

```text
OWNER: billydeeii136
REPOSITORY: WAVE
BRANCH: main
FULL PATH: phone-relay/outbox/wsd_handshake_2026-07-27-004-receipt-from-billy-to-williams.md
```

If `billydeeii136/WAVE` does not exist, use any public-readable `billydeeii136` repository and create this same path:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-004-receipt-from-billy-to-williams.md
```

## Required content inside the receipt

```text
READ_FROM_WILLIAMS_WAVE: confirmed
SOURCE_FILE_READ: williamscottdavisii136/WAVE/phone-relay/outbox/wsd_handshake_2026-07-27-004-where-billy-should-write-reply.md
BILLY_REPLY_OWNER: billydeeii136
BILLY_REPLY_REPOSITORY: <exact repo name>
BILLY_REPLY_BRANCH: main
BILLY_REPLY_FULL_PATH: phone-relay/outbox/wsd_handshake_2026-07-27-004-receipt-from-billy-to-williams.md
BILLY_REPLY_COMMIT_SHA: <commit sha>
PUBLIC_READABLE_BY_WILLIAMS_SIDE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Critical requirement

After writing the receipt, report the exact GitHub file URL and commit SHA through whatever channel is available.

This `williamscottdavisii136` side can read the response only if the file is in a public GitHub location or in a repository where this connector has access.

## Public relay guardrail

Public WAVE is for handshake, routing, status, and receipt messages only.

Do not place passwords, recovery codes, private keys, private legal evidence, sealed material, family-sensitive information, or personal secrets in public WAVE.
