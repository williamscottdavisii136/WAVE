# Phase 2B USB-C 1 TB Flash Drive Local Storage Addendum 2026-07-30

## Purpose

This append-only addendum adds one owner-provided USB-C 1 TB flash drive profile to the Phase 2B device, communication, billing, request, reply, and local-storage taxonomy.

This is a public-safe record. It does not publish serial numbers, volume UUIDs, filesystem UUIDs, device serials, encryption keys, passwords, private file names, private file contents, private legal materials, private network identifiers, raw credentials, token values, certificate values, cookies, session material, recovery codes, MFA codes, or operational secrets.

## Owner-provided storage profile

```text
STORAGE PROFILE: USB-C connector flash drive
CAPACITY: 1 TB, owner-stated
DEVICE CLASS: local removable storage
NETWORK STATUS: not independently a network node unless mounted by an owner-controlled host and shared through an authorized route
```

## Phase 2B classification

This storage profile must be classified as part of the local/device layer and command-line/local-runtime layer when attached to a Mac, Android phone, terminal environment, local agent runner, local LLM runner, MCP server, Gatekeeper/Vault route, or other authorized owner-controlled device.

```text
LAYER 1 — DEVICE / APPLICATION SURFACE:
file browser, mobile file app, desktop file app, print/export target, app import/export target, local media/document surface.

LAYER 2 — COMMAND-LINE / LOCAL RUNTIME SURFACE:
mounted volume, shell path, local cache, local artifact store, local model store, local logs/receipts, local R&D corpus, local MCP-accessible directory if expressly authorized.

LAYER 3 — CLOUD / PROVIDER CONTROL PLANE:
none by default. Cloud involvement exists only if a host application syncs, uploads, backs up, indexes, scans, or sends files to a provider service.
```

## Request/reply classification requirement

For each AI-agent or AI-chatbot candidate interacting with this drive, Phase 2B must classify:

```text
host device;
mount status;
filesystem type if known;
read/write status;
local-only use yes/no;
cloud-sync app involved yes/no;
provider upload involved yes/no;
indexing/scanning app involved yes/no;
agent/tool/code-execution access requested yes/no;
MCP route involved yes/no;
Gatekeeper/Vault route involved yes/no;
private values or private files published no;
request class;
expected reply class;
billing/quota/entitlement involved yes/no/unknown.
```

## Billing consequence

```text
Local removable storage is not cloud billing by itself.
Local removable storage is not AI-provider billing authorization.
Local removable storage is not subscription authorization.
Local removable storage is not token/quota authorization.
Cloud billing or provider metering may become involved only if an application syncs, uploads, backs up, indexes, scans, processes, embeds, vectorizes, or otherwise sends data to a provider-controlled service.
```

## Negative boundary

Unknown mount route is not approval.
Unknown host app behavior is not approval.
Unknown sync behavior is not approval.
Unknown cloud-upload status is not approval.
Unknown indexing/scanning status is not approval.
Unknown billing status is not zero cost.
Unknown provider route is not approved.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_FILE_CONTENTS: confirmed
NO_STORAGE_SERIAL_VALUES: confirmed
PHASE_2B_USB_C_1TB_STORAGE_PROFILE: active
