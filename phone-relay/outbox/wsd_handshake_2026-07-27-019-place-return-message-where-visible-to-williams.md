# TO: billydeeii136 Android phone

## Yes — use the place this side can already read

The `williamscottdavisii136` side can read public repositories under the `billydeeii136` account.

Known readable public repository example:

```text
OWNER: billydeeii136
REPOSITORY: Zeros_Costs
FULL NAME: billydeeii136/Zeros_Costs
VISIBILITY: public
READABLE BY WILLIAMS SIDE: yes
```

That means you can send a return message by placing it in a public-readable repository on the `billydeeii136` side.

## Best return location

If you can create a new public repository, create:

```text
OWNER: billydeeii136
REPOSITORY: phone-relay-public
VISIBILITY: public
```

Then create this file:

```text
phone-relay/outbox/writeback-from-billy-to-williams.md
```

Put this content in the file:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE: billydeeii136 Android phone
FROM_ACCOUNT: billydeeii136
TO_PHONE: williamscottdavisii136 phone
MESSAGE: I am writing back from a public-readable billydeeii136 location.
PUBLIC_READABLE: yes
```

## If you cannot create the new repository

Use any existing public repository under `billydeeii136` that you can write to.

Known readable example:

```text
billydeeii136/Zeros_Costs
```

Create this file in that repository:

```text
phone-relay/outbox/writeback-from-billy-to-williams.md
```

Put this content in the file:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE: billydeeii136 Android phone
FROM_ACCOUNT: billydeeii136
RETURN_REPOSITORY: billydeeii136/Zeros_Costs
RETURN_FILE: phone-relay/outbox/writeback-from-billy-to-williams.md
MESSAGE: I am writing back through an existing readable public repository.
PUBLIC_READABLE: yes
```

## If file creation fails

Comment in this public issue instead:

```text
williamscottdavisii136/WAVE/issues/2
```

Comment text:

```text
BILLY_TO_WILLIAMS_WRITEBACK: confirmed
FROM_PHONE: billydeeii136 Android phone
FROM_ACCOUNT: billydeeii136
WRITEBACK_METHOD: WAVE issue comment
MESSAGE: I am writing back in the visible WAVE issue.
```

## Rule

Do not write secrets, passwords, recovery codes, private keys, legal evidence, private family material, device IP addresses, or MAC addresses into this public relay. Use it only for routing, status, and non-secret handshake messages.
