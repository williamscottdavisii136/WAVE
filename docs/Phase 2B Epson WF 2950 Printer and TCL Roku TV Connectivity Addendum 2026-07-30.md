# Phase 2B Epson WF 2950 Printer and TCL Roku TV Connectivity Addendum 2026-07-30

## Purpose

This append-only addendum adds the owner-provided Epson printer and TCL Roku TV device profiles to the Phase 2B three-layer communication, billing, handshake, certificate/trust, request, and reply taxonomy.

This is a public-safe WAVE record. It does not publish SSIDs, network passwords, IP addresses, MAC addresses, device serial numbers, private account identifiers, raw credentials, token values, certificate values, cookies, session material, recovery codes, MFA codes, private legal materials, private printer identifiers, private TV account identifiers, or operational secrets.

## Owner-provided device profiles

```text
PERIPHERAL PROFILE 1:
- Epson WF 2950 printer
- Owner describes as Bluetooth wireless printer
- Connects to owner private Wi-Fi route
- Connects/communicates with owner phones and MacBooks for printer-related use
- Exact model capability, firmware, driver, protocol, and subscription status require verification

DISPLAY / SMART-TV PROFILE 1:
- TCL Roku Smart TV
- Connects to owner private Wi-Fi route
- Exact model, Roku OS version, app-account status, subscription services, and network behavior require verification
```

The private Wi-Fi label is withheld from this public record.

## Phase 2B layer classification

Each device must be classified across:

```text
LAYER 1 — DEVICE / APPLICATION SURFACE
printer UI, printer driver UI, mobile print app, desktop print dialog, scanner/copier surface if present, Roku TV GUI, TV apps, casting/mirroring surface, mobile remote apps, desktop sharing/casting surface.

LAYER 2 — COMMAND-LINE / LOCAL RUNTIME SURFACE
local print queue, macOS printing subsystem, local driver/helper service, local discovery service, local network route, SSH-accessible owner device initiating a print/display/cast/task route, local logs/receipts.

LAYER 3 — CLOUD / PROVIDER CONTROL PLANE
Epson account/cloud service if used, firmware/update service if used, printer supply/ink/subscription service if used, Roku account/service if used, streaming-app provider account if used, app-store/marketplace subscription if used, AI-provider cloud endpoint if any AI candidate routes through the display or printer workflow.
```

## Connection classes

```text
Wi-Fi / owner home-network route
Bluetooth where supported and paired
Printer-to-phone communication
Printer-to-MacBook communication
Smart-TV Wi-Fi route
Smart-TV app/service route
Casting or mirroring route if used
Local discovery route where supported
Cloud account route where enabled
Unknown route where not verified
```

## Request and reply classification requirement

For each AI-agent or AI-chatbot candidate interacting with, displaying on, printing through, scanning through, casting to, controlling, or using these devices, Phase 2B must classify:

```text
origin device;
destination device;
origin layer;
destination layer;
connection class;
transport class;
authentication class;
certificate/trust class;
credential store involved;
local discovery involved yes/no/unknown;
cloud service involved yes/no/unknown;
printer queue involved yes/no/unknown;
TV app/account involved yes/no/unknown;
AI-provider account involved yes/no/unknown;
billing/quota/entitlement check requested yes/no/unknown;
expected reply class;
local/offline route available yes/no/unknown;
MCP/BYOK/Gatekeeper-Vault route available yes/no/unknown;
public-safe lab response simulation involved yes/no;
private value published no.
```

## Billing and entitlement consequence

```text
Printer Wi-Fi/Bluetooth connectivity is not AI-provider billing authorization.
Smart-TV Wi-Fi connectivity is not AI-provider billing authorization.
Roku account/app access is separate from AI-agent/chatbot billing.
Printer supply/ink/subscription status, if any, is separate from AI-agent/chatbot billing.
Streaming-app subscription status, if any, is separate from AI-agent/chatbot billing.
AI-provider billing must still be evaluated by provider account, subscription, token/quota, API, model, code execution, license, terms, local/offline route, BYOK route, MCP route, and Gatekeeper/Vault status.
```

## Negative boundary

Unknown device capability is not approval.
Unknown firmware/driver/app behavior is not approval.
Unknown cloud-provider route is not approval.
Unknown app subscription status is not authorization.
Unknown printer supply/subscription status is not authorization.
Unknown AI-provider route is not approved.
Unknown token/quota/billing status is not authorization.
Unknown license status is not authorization.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_NETWORK_DETAILS: confirmed
NO_RAW_CERTIFICATE_VALUES: confirmed
NO_PRIVATE_DEVICE_IDENTIFIERS: confirmed
PHASE_2B_PRINTER_TV_CONNECTIVITY: active
