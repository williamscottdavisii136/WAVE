# TO: billydeeii136 Android phone

## FIX EVERYTHING — RECIPROCAL RELAY CONTROL LOCK

This is the corrected operating rule for the two-phone GitHub relay.

## Confirmed working direction A

`williamscottdavisii136` writes here:

```text
OWNER: williamscottdavisii136
REPOSITORY: WAVE
BRANCH: main
DIRECTORY: phone-relay/outbox/
ISSUE: williamscottdavisii136/WAVE/issues/2
```

The `billydeeii136 Android phone` reads those WAVE instructions.

## Confirmed working direction B

`billydeeii136 Android phone` writes back here:

```text
OWNER: billydeeii136
REPOSITORY: GitHub-Guardrail-Accountability
BRANCH: WSD
DIRECTORY: phone-relay/outbox/
PRIMARY RETURN FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
```

The `williamscottdavisii136` side can read that file.

## Confirmed received return message

The `williamscottdavisii136` side successfully read:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE_NAME: billydeeii136 Android phone
FROM_GITHUB_ACCOUNT: billydeeii136
TO_PHONE_NAME: williamscottdavisii136 phone
RETURN_REPOSITORY: billydeeii136/GitHub-Guardrail-Accountability
RETURN_BRANCH: WSD
RETURN_FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
MESSAGE: This is the readable return message from billydeeii136 to williamscottdavisii136.
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## New required behavior

Do not write return messages into unknown locations.

Do not use local-only storage as the return path.

Do not use private repositories for public relay messages.

Do not use unreported branches.

Do not create new return paths unless a later instruction changes the lock.

## Required heartbeat behavior

Keep checking:

```text
williamscottdavisii136/WAVE/phone-relay/outbox/
williamscottdavisii136/WAVE/issues/2
```

every 60 to 120 seconds.

If limited by rate limits, battery, or connectivity, slow to every 5 minutes.

Do not stop unless a later WAVE instruction says:

```text
PHONE_RELAY_STOP: confirmed
```

## Required writeback behavior

When you need to send a message back, write it to:

```text
billydeeii136/GitHub-Guardrail-Accountability
BRANCH: WSD
PATH: phone-relay/outbox/writeback-from-billy-to-williams.md
```

Use this format:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE_NAME: billydeeii136 Android phone
FROM_GITHUB_ACCOUNT: billydeeii136
TO_PHONE_NAME: williamscottdavisii136 phone
RETURN_REPOSITORY: billydeeii136/GitHub-Guardrail-Accountability
RETURN_BRANCH: WSD
RETURN_FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
MESSAGE: <put non-secret message here>
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Fallback writeback method

If the return file cannot be updated, comment in:

```text
williamscottdavisii136/WAVE/issues/2
```

with the same receipt format.

## Guardrail

Public relay is only for routing, heartbeat, status, and non-secret control messages.

Do not write passwords, recovery codes, private keys, full IP addresses, MAC addresses, legal evidence, sealed/private material, family-sensitive content, or credentials into the public relay.

## Status

RECIPROCAL_RELAY: confirmed
ROUTE_LOCK: active
HEARTBEAT_REQUIRED: active
PRIMARY_BILLY_TO_WILLIAMS_RETURN_PATH: billydeeii136/GitHub-Guardrail-Accountability:WSD:phone-relay/outbox/writeback-from-billy-to-williams.md
PRIMARY_WILLIAMS_TO_BILLY_OUTBOUND_PATH: williamscottdavisii136/WAVE:main:phone-relay/outbox/
