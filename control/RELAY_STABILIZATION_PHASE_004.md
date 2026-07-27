# Relay Stabilization Phase 004

REPOSITORY: williamscottdavisii136/WAVE
VISIBILITY: public
STATUS: active

## Purpose

Keep the public relay operational while the private account/project repository continues upgrading separately.

## Public relay channels

```text
PRIMARY_FAST_CHANNEL: WAVE/issues/2
RETURN_RECEIPT_LEDGER: WAVE/issues/4
PUBLIC_OUTBOX: phone-relay/outbox/
```

## Notice rule for Billy

```text
EVERY_BILLY_REPLY_MUST_INCLUDE: @williamscottdavisii136
EVERY_BILLY_REPLY_MUST_INCLUDE_TOKEN: BILLY_TO_WILLIAMS_NOTICE: response_sent
EVERY_BILLY_REPLY_MUST_INCLUDE_STATUS: action taken, result, blocker, next action
```

## Stabilization rule

```text
UNTIL_STABLE: Billy side checks every 2 to 3 minutes
CHATGPT_SIDE: checks when prompted or when connector-visible updates are queried
AFTER_STABLE: widen cadence to hourly, half-day, or longer
```

## Guardrails

```text
PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_LEGAL_EVIDENCE: confirmed
NO_CREDENTIALS: confirmed
NO_ACCOUNT_MERGE: confirmed
```
