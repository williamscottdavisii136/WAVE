# Phase 2B Dual Connector USB-A / USB-C 1 TB Removable Storage Correction

## Purpose

This append-only addendum corrects and supersedes the earlier generic description of the local-removable-storage device.

The device is not to be treated as only a single USB-C flash-drive profile. It is an owner-described dual-connector removable-storage device.

## Corrected device profile

```text
DEVICE CLASS: dual-connector removable storage
CAPACITY: 1 TB, owner-stated
CONNECTOR 1: USB connector for MacBook / Macintosh host use
CONNECTOR 2: USB-C connector for Samsung smartphone host use
PRIMARY FUNCTION: local removable storage and local file transfer between owner-controlled host devices
NETWORK STATUS: not independently a network node unless mounted by an owner-controlled host and shared through an authorized local route
```

## Host-device route classification

```text
MACBOOK ROUTE:
The USB connector may connect to MacBook devices for local removable-storage access, subject to device compatibility, operating-system support, filesystem support, and owner authorization.

SAMSUNG SMARTPHONE ROUTE:
The USB-C connector may connect to Samsung smartphones for local removable-storage access, subject to Android OTG / USB host support, filesystem support, app permissions, and owner authorization.
```

## Phase 2B handshake classification

For each AI-agent, AI-chatbot, local tool, terminal workflow, or application using this storage device, Phase 2B must classify:

```text
host device;
connector used;
mount path or storage access class, public-safe only;
filesystem class;
read/write permission class;
app permission class;
local-only use yes/no;
interdevice transfer use yes/no;
cloud sync/upload/indexing/vectorization involved yes/no;
provider billing/quota/token event involved yes/no;
Gatekeeper/Vault-controlled material present yes/no, without exposing values;
private values published no.
```

## Billing consequence

```text
Dual-connector removable storage is not cloud billing by itself.
Dual-connector removable storage is not AI-provider billing authorization.
Dual-connector removable storage is not subscription authorization.
Dual-connector removable storage is not token/quota authorization.
```

Cloud/provider billing may become involved only if an application syncs, uploads, backs up, indexes, scans, processes, embeds, vectorizes, transcribes, analyzes, or otherwise sends storage contents or metadata to a provider-controlled service.

## Boundary

This addendum does not publish serial numbers, device IDs, volume UUIDs, filesystem UUIDs, private file paths, private file names, private legal materials, credentials, keys, tokens, certificates, cookies, session material, or private operational details.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_STORAGE_IDENTIFIERS: confirmed
DUAL_CONNECTOR_STORAGE_CORRECTION: active
