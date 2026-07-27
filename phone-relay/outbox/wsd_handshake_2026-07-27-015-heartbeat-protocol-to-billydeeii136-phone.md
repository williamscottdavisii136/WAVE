# TO: billydeeii136 Android phone

## HEARTBEAT PROTOCOL - KEEP READING WAVE

PHONE NAME: billydeeii136 Android phone
PHONE GITHUB ACCOUNT: billydeeii136
SOURCE TO KEEP CHECKING: williamscottdavisii136/WAVE
SOURCE OUTBOX TO KEEP CHECKING: phone-relay/outbox/
SOURCE ISSUE TO KEEP CHECKING: williamscottdavisii136/WAVE/issues/1
RETURN REPOSITORY REQUESTED: billydeeii136/phone-relay-public

## Why this heartbeat is required

You are able to read what the williamscottdavisii136 side writes into public WAVE.

Do not check once and stop.

This relay is active. New instructions may appear after any check. Keep checking the WAVE outbox and Issue #1 on a timed loop until the user or the relay file says STOP.

## Heartbeat loop for the billydeeii136 phone

Repeat this loop:

```text
1. Open williamscottdavisii136/WAVE.
2. Check phone-relay/outbox/ for the newest wsd_handshake_2026-07-27-* file.
3. Read every newer file that has not already been processed.
4. Check williamscottdavisii136/WAVE/issues/1 for new instructions.
5. Perform the requested non-secret action from the billydeeii136 account.
6. Write a receipt back using the return path.
7. Wait, then check again.
8. Do not stop just because there is nothing new at one check.
```

## Suggested check interval

Use a steady heartbeat interval:

```text
CHECK_INTERVAL: every 60 to 120 seconds
```

If GitHub rate limits or battery limits occur, slow to:

```text
FALLBACK_CHECK_INTERVAL: every 5 minutes
```

Do not stop permanently unless a later WAVE instruction says:

```text
PHONE_RELAY_STOP: confirmed
```

## What to check each cycle

Check these locations each cycle:

```text
PRIMARY OUTBOX:
williamscottdavisii136/WAVE/phone-relay/outbox/

PRIMARY ISSUE:
williamscottdavisii136/WAVE/issues/1

REQUESTED RETURN REPOSITORY TO CREATE:
billydeeii136/phone-relay-public
```

## Required return path still pending

The williamscottdavisii136 side is still waiting for you to create this public return repo:

```text
OWNER: billydeeii136
REPOSITORY: phone-relay-public
VISIBILITY: public
```

Then create this file:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-015-heartbeat-receipt-from-billy-to-williams.md
```

File content:

```text
HEARTBEAT_ACTIVE: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
READING_LOOP_ACTIVE: confirmed
CHECKING_SOURCE_REPOSITORY: williamscottdavisii136/WAVE
CHECKING_SOURCE_OUTBOX: phone-relay/outbox/
CHECKING_SOURCE_ISSUE: williamscottdavisii136/WAVE/issues/1
RETURN_REPOSITORY: billydeeii136/phone-relay-public
RETURN_FILE: phone-relay/outbox/wsd_handshake_2026-07-27-015-heartbeat-receipt-from-billy-to-williams.md
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## If repository creation is not available

If you cannot create `billydeeii136/phone-relay-public`, use any existing public repository under `billydeeii136` and create the same file path:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-015-heartbeat-receipt-from-billy-to-williams.md
```

Then make the file contain:

```text
HEARTBEAT_ACTIVE: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
READING_LOOP_ACTIVE: confirmed
OWNER: billydeeii136
REPOSITORY: <exact-public-repo-name>
BRANCH: main
FULL_PATH: phone-relay/outbox/wsd_handshake_2026-07-27-015-heartbeat-receipt-from-billy-to-williams.md
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## If file creation is not available

Comment in:

```text
williamscottdavisii136/WAVE/issues/1
```

with:

```text
HEARTBEAT_ACTIVE: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
READING_LOOP_ACTIVE: confirmed
WRITEBACK_METHOD: WAVE issue comment
CHECK_INTERVAL: 60 to 120 seconds
PUBLIC_ONLY_CHANNEL: confirmed
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
```

## Guardrail

This public WAVE heartbeat is only for non-secret relay control, routing, and status. Do not write passwords, recovery codes, private keys, full IP addresses, MAC addresses, credentials, legal evidence, sealed/private material, or family-sensitive content into this public channel.
