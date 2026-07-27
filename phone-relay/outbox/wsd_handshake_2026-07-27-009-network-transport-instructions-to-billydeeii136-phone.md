# WSD HANDSHAKE 2026-07-27-009

# ADDRESSED TO: billydeeii136 Android phone / billydeeii136 repository

## Target phone and repository

```text
PHONE NAME: billydeeii136 Android phone
PHONE GITHUB ACCOUNT: billydeeii136
PHONE REPOSITORY TO USE FOR REPLIES: billydeeii136/WAVE, if it exists
FALLBACK REPOSITORY: any public-readable billydeeii136 repository
PUBLIC READER REPOSITORY: williamscottdavisii136/WAVE
PUBLIC ISSUE TO REPLY IN: williamscottdavisii136/WAVE/issues/1
```

## Purpose

Use Wi-Fi, TCP/IP, SSH, and Bluetooth only as transport checks between the user’s own devices. Do not publish passwords, private keys, recovery codes, full local IP addresses, MAC addresses, private legal material, family-sensitive material, or credentials in public WAVE.

## Step 1 — Confirm Wi-Fi path

On the billydeeii136 Android phone:

```text
1. Confirm the phone is connected to the same home Wi-Fi as the Williams phone/Mac.
2. Do not post the SSID publicly if it identifies the home network.
3. Record only this public-safe result:

WIFI_SAME_NETWORK: confirmed / blocked / unknown
```

## Step 2 — Confirm TCP/IP path

On the billydeeii136 Android phone:

```text
1. Identify the local IPv4 address privately on the phone.
2. Do not post the full IP address publicly.
3. Test whether the other device is reachable on the home LAN using ping or another local TCP/IP reachability test.
4. Record only this public-safe result:

TCPIP_LOCAL_REACHABILITY: confirmed / blocked / unknown
TCPIP_TEST_METHOD: ping / nc / ssh-test / other
LOCAL_IP_REDACTED: 192.168.x.x or 10.x.x.x only
```

## Step 3 — Confirm SSH path

On the billydeeii136 Android phone:

```text
1. Use only an existing authorized SSH setup between the user’s own devices.
2. Do not post SSH usernames, private keys, passwords, tokens, full IP addresses, or ports publicly.
3. Test whether SSH reaches the expected local device.
4. If SSH works, create only a non-secret receipt file or issue comment.
5. Record only this public-safe result:

SSH_AUTHORIZED_PATH: confirmed / blocked / unknown
SSH_TEST_RESULT: connected / refused / timed-out / auth-failed / not-installed
SSH_SECRET_TRANSFER: no
```

## Step 4 — Confirm Bluetooth path

On the billydeeii136 Android phone:

```text
1. Confirm the Williams-side device is paired or visible over Bluetooth.
2. Do not post Bluetooth MAC addresses publicly.
3. Use Bluetooth only for non-secret status-file transfer if needed.
4. Record only this public-safe result:

BLUETOOTH_PAIRING: confirmed / blocked / unknown
BLUETOOTH_TRANSFER_AVAILABLE: confirmed / blocked / unknown
BLUETOOTH_SECRET_TRANSFER: no
```

## Step 5 — Write back in the public WAVE issue

Primary writeback method: comment directly in this issue:

```text
williamscottdavisii136/WAVE/issues/1
```

Paste this receipt with values filled in:

```text
BILLY_TO_WILLIAMS_NETWORK_RECEIPT: confirmed
PHONE_NAME: billydeeii136 Android phone
PHONE_GITHUB_ACCOUNT: billydeeii136
PHONE_REPOSITORY_USED: <exact repo used>
WIFI_SAME_NETWORK: confirmed / blocked / unknown
TCPIP_LOCAL_REACHABILITY: confirmed / blocked / unknown
TCPIP_TEST_METHOD: ping / nc / ssh-test / other
SSH_AUTHORIZED_PATH: confirmed / blocked / unknown
SSH_TEST_RESULT: connected / refused / timed-out / auth-failed / not-installed
BLUETOOTH_PAIRING: confirmed / blocked / unknown
BLUETOOTH_TRANSFER_AVAILABLE: confirmed / blocked / unknown
WRITEBACK_METHOD_USED: WAVE issue comment
NO_SECRET_TRANSFER: confirmed
NO_ACCOUNT_MERGE: confirmed
NO_SILENT_CROSS_WRITE: confirmed
MESSAGE_TO_WILLIAMS_PHONE: <short non-secret status>
```

## Step 6 — If issue comment fails, create this file on the billydeeii136 side

Preferred exact public file path:

```text
billydeeii136/WAVE/phone-relay/outbox/wsd_handshake_2026-07-27-009-network-transport-receipt-from-billy-to-williams.md
```

If billydeeii136/WAVE does not exist, use any public-readable billydeeii136 repository and create:

```text
phone-relay/outbox/wsd_handshake_2026-07-27-009-network-transport-receipt-from-billy-to-williams.md
```

Then report this exact locator publicly:

```text
OWNER:
REPOSITORY:
BRANCH:
FULL_PATH:
FILE_NAME:
COMMIT_SHA:
PUBLIC_READABLE: yes/no
```

## Standing guardrail

Public WAVE is only for routing, handshake, network status, and access-control receipts. Do not put secrets, full device addresses, evidence, legal source files, private family data, keys, passwords, tokens, recovery codes, or credentials here.
