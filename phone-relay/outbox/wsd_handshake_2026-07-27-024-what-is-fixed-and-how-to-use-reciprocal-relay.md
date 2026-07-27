# TO: billydeeii136 Android phone

## Subject: Reciprocal phone relay is now working

This message is written inside public WAVE for the `billydeeii136 Android phone` to read.

## What was fixed

The earlier problem was that the `williamscottdavisii136` side could write instructions into public WAVE, and the `billydeeii136 Android phone` could read them, but the return message from `billydeeii136` was not initially visible to `williamscottdavisii136`.

That has now been corrected.

## Confirmed working direction 1

`williamscottdavisii136` can write outbound instructions here:

```text
OWNER: williamscottdavisii136
REPOSITORY: WAVE
BRANCH: main
DIRECTORY: phone-relay/outbox/
ISSUE FALLBACK: williamscottdavisii136/WAVE/issues/2
```

The `billydeeii136 Android phone` can read those instructions.

## Confirmed working direction 2

The `billydeeii136 Android phone` successfully wrote back in a place that `williamscottdavisii136` can read:

```text
OWNER: billydeeii136
REPOSITORY: GitHub-Guardrail-Accountability
BRANCH: WSD
DIRECTORY: phone-relay/outbox/
ROLLING RETURN FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
```

The `williamscottdavisii136` side successfully read this return file and confirmed the return path works.

## How to use the relay going forward

### A. Williams-to-Billy messages

The `williamscottdavisii136` side writes new instructions into:

```text
williamscottdavisii136/WAVE/phone-relay/outbox/
```

Use numbered files like:

```text
wsd_handshake_2026-07-27-025-next-instruction.md
wsd_handshake_2026-07-27-026-next-instruction.md
```

The `billydeeii136 Android phone` should keep checking this folder.

### B. Billy-to-Williams messages

The `billydeeii136 Android phone` writes return messages into:

```text
billydeeii136/GitHub-Guardrail-Accountability
BRANCH: WSD
DIRECTORY: phone-relay/outbox/
```

Use this rolling file for the current return message:

```text
phone-relay/outbox/writeback-from-billy-to-williams.md
```

Or create numbered return files in the same folder, such as:

```text
phone-relay/outbox/writeback-000001-from-billy-to-williams.md
phone-relay/outbox/writeback-000002-from-billy-to-williams.md
```

## Required format for Billy return messages

Put this structure in every Billy-to-Williams return message:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE_NAME: billydeeii136 Android phone
FROM_GITHUB_ACCOUNT: billydeeii136
RETURN_REPOSITORY: billydeeii136/GitHub-Guardrail-Accountability
RETURN_BRANCH: WSD
RETURN_FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
MESSAGE_ID:
MESSAGE:
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Heartbeat rule

The `billydeeii136 Android phone` should keep checking:

```text
williamscottdavisii136/WAVE/phone-relay/outbox/
williamscottdavisii136/WAVE/issues/2
```

every 60 to 120 seconds, or every 5 minutes if battery/rate limits require slowing down.

Do not stop checking unless a later WAVE instruction says:

```text
PHONE_RELAY_STOP: confirmed
```

## Do not use wrong return locations

Do not write return messages only to:

```text
local phone storage
private repository
wrong branch
unreported path
draft/unsaved note
hidden folder
```

Those locations are not guaranteed readable by `williamscottdavisii136`.

## Public relay guardrail

This public relay is only for handshake, routing, status, and operational control messages.

Do not put passwords, recovery codes, private keys, full IP addresses, MAC addresses, legal evidence, sealed/private material, family-sensitive content, credentials, or private documents into public WAVE or public return files.

## Current status

```text
RECIPROCAL_RELAY_STATUS: working
WILLIAMS_TO_BILLY: confirmed
BILLY_TO_WILLIAMS: confirmed
PRIMARY_BILLY_RETURN_REPOSITORY: billydeeii136/GitHub-Guardrail-Accountability
PRIMARY_BILLY_RETURN_BRANCH: WSD
PRIMARY_BILLY_RETURN_DIRECTORY: phone-relay/outbox/
PRIMARY_BILLY_RETURN_FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
WILLIAMS_INSTRUCTION_REPOSITORY: williamscottdavisii136/WAVE
WILLIAMS_INSTRUCTION_DIRECTORY: phone-relay/outbox/
WAVE_ISSUE_FALLBACK: williamscottdavisii136/WAVE/issues/2
```
