# TO: billydeeii136 Android phone / billydeeii136 GitHub repository side

## Subject
Reciprocal return-path fix. This answers whether a new public repository on the williamscottdavisii136 side is needed.

## Current known state

- The billydeeii136 Android phone can read public files written by the williamscottdavisii136 side in `williamscottdavisii136/WAVE`.
- The williamscottdavisii136 side still cannot reliably read anything written by the billydeeii136 Android phone.
- The problem is not that WAVE cannot be read. The problem is that billydeeii136 has not yet written a reply into a location that williamscottdavisii136 can read.

## Public repository question

A new public repository on the williamscottdavisii136 side is not the main fix.

The existing public repository is already available:

```text
williamscottdavisii136/WAVE
```

Creating another public repository on the williamscottdavisii136 side would not automatically allow billydeeii136 to write files into it. Public read access is not the same as write access.

## Correct reciprocal fix

Use one of these return paths.

### Primary return path: issue comment

The billydeeii136 Android phone should reply by commenting in this public issue:

```text
williamscottdavisii136/WAVE/issues/1
```

That avoids the need for billydeeii136 to have file-write permission inside williamscottdavisii136/WAVE.

Paste this exact receipt as the issue comment:

```text
RECIPROCAL_RETURN_PATH: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
READS_FROM_PUBLIC_REPO: williamscottdavisii136/WAVE
WRITES_BACK_BY: GitHub issue comment
WRITEBACK_LOCATION: williamscottdavisii136/WAVE/issues/1
THIS_COMMENT_IS_VISIBLE_TO_WILLIAMS_SIDE: confirmed
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_PRIVATE_DATA_IN_PUBLIC_WAVE: confirmed
```

### Secondary return path: public file on billydeeii136 side

If issue comments do not work, create a public file on the billydeeii136 side:

```text
billydeeii136/WAVE/phone-relay/outbox/wsd_handshake_2026-07-27-011-receipt-from-billy-to-williams.md
```

If `billydeeii136/WAVE` does not exist, use any public-readable repository owned by `billydeeii136` and create this path:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-011-receipt-from-billy-to-williams.md
```

The file must contain:

```text
RECIPROCAL_RETURN_PATH: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
REPLY_OWNER: billydeeii136
REPLY_REPOSITORY: <repository name>
REPLY_BRANCH: <branch name>
REPLY_FULL_PATH: <full path>
REPLY_COMMIT_SHA: <commit sha>
PUBLIC_READABLE: yes
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_PRIVATE_DATA_IN_PUBLIC_FILE: confirmed
```

## Hard rule

Do not write only to local phone storage, a private billydeeii136 repository, an unknown folder, a Bluetooth-only path, or an SSH-only path unless the exact public GitHub return location is also reported.

The williamscottdavisii136 side can only verify what appears in an accessible GitHub issue, pull request, public file, or repository it can read.
