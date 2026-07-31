# Phase 2B Bluetooth Visibility Pairing and Full Mesh Architecture Addendum

## Purpose

This append-only public-safe addendum describes what must be in place for Bluetooth functionality to work across the owner-controlled Phase 2B device environment.

The key distinction is that Bluetooth visibility, Bluetooth pairing, Bluetooth profile access, Wi-Fi/IP connectivity, SSH connectivity, and full-mesh interdevice communication are separate layers.

A device may see another device over Bluetooth without being authorized to transfer files, run commands, share internet, access app data, access storage, use SSH, or reach any cloud provider.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_DEVICE_IDENTIFIERS: confirmed
NO_RAW_BLUETOOTH_KEYS: confirmed
NO_RAW_SSH_KEYS: confirmed
NO_RAW_CERTIFICATE_VALUES: confirmed

## Architecture distinction

```text
BLUETOOTH VISIBILITY:
A device is advertising, discoverable, or responding to scan/inquiry.

BLUETOOTH PAIRING / BONDING:
The devices have accepted a pairing/trust relationship and stored non-public link/security material inside their operating-system Bluetooth stores.

BLUETOOTH PROFILE ACCESS:
The devices support a matching service/profile such as audio, keyboard/mouse, file transfer, printer discovery, tethering/PAN, serial/RFCOMM, BLE GATT, or device-specific control.

WI-FI / IP CONNECTIVITY:
The devices are on the owner-controlled network route and can resolve/reach each other by IP, local hostname, mDNS/Bonjour, SSDP, or another local discovery method.

SSH CONNECTIVITY:
A host is running an SSH server, the client can reach the host over an IP route, and authorized host/user authentication succeeds.

FULL-MESH INTERDEVICE CONNECTIVITY:
The owner-controlled devices can communicate through approved Wi-Fi/IP, Bluetooth, USB/USB-C cable, SSH, local storage, or other authorized local routes. Full mesh does not mean every Bluetooth device can maintain every Bluetooth profile to every other device at the same time.
```

## What must be in place for Bluetooth to work

```text
1. Bluetooth-capable hardware on each device.
2. Working OS Bluetooth driver/stack.
3. Bluetooth radio powered on.
4. Device discoverability or advertising enabled where needed.
5. Nearby physical range and tolerable radio interference.
6. Required app/system permissions enabled for scanning, pairing, nearby devices, file transfer, printing, or tethering.
7. A successful pairing/bonding event when the profile requires trust.
8. Matching Bluetooth profiles/services on both sides.
9. User approval for trust prompts, pairing codes, device-access prompts, file-transfer prompts, or tethering prompts where required.
10. Device-specific restrictions satisfied, including Android permissions, macOS Bluetooth preferences, legacy macOS compatibility limits, printer capabilities, Roku/TV capabilities, and phone vendor limitations.
11. Stored pairing/bonding material not deleted, expired, reset, or rejected.
12. The requested service/profile enabled after pairing.
```

## Common Bluetooth profile/service classes to classify

```text
A2DP / AVRCP: audio and media control.
HID: keyboard, mouse, remote-control style input.
HFP / headset profile: call/audio accessory profile.
OBEX / file exchange: file transfer where supported.
PAN / network access: Bluetooth network/tethering route where supported.
SPP / RFCOMM: serial-port style communication where supported.
BLE GATT: low-energy advertising and service/characteristic access.
Printer/service discovery: printer-specific local printing support where supported.
Vendor app bridge: device-specific companion-app link where supported.
Unknown or unsupported profile: requires review.
```

## Certificate / trust classification

Bluetooth pairing normally does not mean public TLS certificate exchange. The record should classify the trust material by type, not publish values.

```text
BLUETOOTH TRUST MATERIAL CLASS:
pairing code / passkey;
link key;
long-term key;
bonding record;
BLE pairing/bonding material;
device trust prompt;
unknown.

SSH TRUST MATERIAL CLASS:
SSH host key;
SSH user key;
password authentication;
agent-backed authentication;
known_hosts record;
unknown.

HTTPS / CLOUD TRUST MATERIAL CLASS:
TLS certificate chain;
platform trust store;
certificate pinning behavior;
OAuth/session/API authentication;
unknown.
```

Raw Bluetooth link keys, long-term keys, pairing values, SSH keys, passwords, tokens, certificates, cookies, sessions, IP addresses, MAC addresses, phone numbers, serial numbers, IMEI values, and private Wi-Fi identifiers must not be published in WAVE.

## How devices may see each other

```text
BLUETOOTH SEEING:
The device detects another device through Bluetooth classic inquiry, BLE advertising, or a paired-device list.

WI-FI SEEING:
The device detects another device through local network discovery, router/client list, mDNS/Bonjour, SSDP, app discovery, or direct IP reachability.

SSH SEEING:
The client reaches an SSH server over an IP route and verifies host/user authentication.

USB SEEING:
A Mac sees a phone through a direct USB/USB-C physical link and the phone exposes an approved mode such as charging-only, file transfer/MTP, photo/PTP, tethering, ADB/debugging if enabled, or backup/import mode.
```

## Phase 2B billing consequence

Bluetooth visibility, Bluetooth pairing, Bluetooth profile access, Wi-Fi discovery, SSH reachability, and USB visibility are local connection states. They do not by themselves establish AI-provider billing authorization, cloud entitlement, subscription entitlement, token/quota authorization, provider account authorization, certificate-transfer authority, credential-transfer authority, or paid resource approval.

Cloud/provider billing becomes relevant only if a device, app, agent, chatbot, IDE, terminal runner, backup service, sync service, indexing service, model endpoint, embedding service, transcription/OCR service, hosted code runner, connector, plugin, marketplace, or other provider-controlled service receives, processes, stores, meters, or executes the request.

## Required Phase 2B classification

Each candidate/device path must classify:

```text
origin device;
destination device;
connection class: Bluetooth / Wi-Fi / SSH / USB / cloud / mixed / unknown;
Bluetooth visibility yes/no/unknown;
Bluetooth pairing/bonding yes/no/unknown;
Bluetooth profile/service class;
Wi-Fi/IP route yes/no/unknown;
SSH server present yes/no/unknown;
SSH authentication class;
USB negotiated mode if cable-connected;
credential store involved;
trust material class only, no values;
request class;
expected reply class;
local-only path yes/no/unknown;
cloud/provider control-plane contact yes/no/unknown;
billing/quota/entitlement check yes/no/unknown;
status: ALLOW_LOCAL_ONLY / REQUIRES_REVIEW / BLOCK / UNRESOLVED.
```

PHASE_2B_BLUETOOTH_ARCHITECTURE: active
