# Phase 2B Device Environment Profiles

## Purpose

This append-only WAVE record adds owner-provided device-environment profiles to the Phase 2B three-layer communication, billing, handshake, certificate/trust, request, and reply taxonomy.

This is a public-safe device-class record. It does not publish serial numbers, IMEI values, phone numbers, carrier account numbers, IP addresses, MAC addresses, private network names, private account details, private credentials, token values, certificate values, cookies, session material, recovery codes, MFA codes, private legal materials, or operational secrets.

## Owner-provided device environment

```text
ANDROID SMARTPHONE ENVIRONMENT:
- Android smartphone label: 8:15
- Android smartphone label: A16
- Android smartphone label: 817

MAC ENVIRONMENT:
- MacBook Air, 2015, owner states running Monterey
- MacBook Pro, 2012, legacy environment, owner states Yosemite
```

The labels `8:15`, `A16`, and `817` are preserved as owner-provided labels until exact device model, Android version, vendor, and runtime profile are separately verified.

## Phase 2B layer mapping

### Layer 1 — Device / application surface

For each Android smartphone, MacBook Air, and MacBook Pro profile, Phase 2B must classify:

```text
device class;
operating system family;
owner-stated OS/version label;
GUI app surface;
browser surface;
mobile app surface;
desktop app surface;
IDE app surface;
voice-to-code surface;
local credential store or keychain class;
app-store / marketplace / provider login surface;
local app-to-cloud request path;
local app-to-command-line request path;
local app-to-local-runtime request path.
```

### Layer 2 — Command-line / local runtime surface

For each Mac or Android/terminal-capable profile, Phase 2B must classify:

```text
terminal emulator;
shell;
Warp / terminal equivalent where available;
VS Code terminal;
Xcode command-line tools where available;
Git CLI;
GitHub CLI;
local AI-agent runner;
local chatbot runner;
local LLM route;
local MCP server route;
Gatekeeper/Vault access route;
local proxy / traffic-mediation R&D lab route;
local logs and receipts.
```

### Layer 3 — Cloud / provider control plane

For every application or CLI route on these devices, Phase 2B must classify whether the request reaches:

```text
provider API;
SaaS account;
cloud model endpoint;
billing service;
subscription service;
entitlement service;
quota service;
token meter;
credit ledger;
hosted code execution;
hosted tools/plugins/connectors;
marketplace;
account/org/workspace/project tenant.
```

## Device-specific handshake classification

For every candidate AI agent or chatbot running through these devices, classify the request and response without publishing secrets:

```text
REQUEST:
origin device profile;
origin layer;
destination layer;
transport class;
authentication class;
certificate/trust class;
account/workspace/project/tenant class;
model/tool/agent requested;
code execution requested yes/no;
local/offline route available yes/no;
MCP route involved yes/no;
BYOK route involved yes/no;
billing/quota/entitlement check requested yes/no;
private value published no.

EXPECTED RESPONSE:
authenticated/unauthenticated;
authorized/unauthorized;
entitlement allowed/denied/unknown;
quota available/exceeded/unknown;
billing not involved/billing involved/unknown;
rate-limit status;
model/tool/code route available/unavailable;
local fallback available/unavailable;
BYOK/MCP route accepted/rejected/unknown;
error class;
no raw secret returned.
```

## Public/private boundary

Public WAVE may carry only public-safe device classes, owner-provided labels, routing doctrine, issue references, receipt language, and non-secret operating instructions.

Private device identifiers, exact network identifiers, local proxy configuration, actual account values, raw credentials, token values, certificate values, cookies, session material, MFA codes, recovery codes, private legal materials, and operational secrets stay outside WAVE.

## Negative boundary

Unknown device model is not approval.
Unknown OS version is not approval.
Unknown app-store or marketplace entitlement is not authorization.
Unknown cloud/provider route is not approved.
Unknown certificate/trust handshake is not approval.
Unknown token/quota/billing status is not authorization.
Unknown license status is not authorization.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_DEVICE_IDENTIFIERS: confirmed
PHASE_2B_DEVICE_PROFILES: active
