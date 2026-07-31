# Phase 2B Macintosh Environment Connectivity Addendum

## Purpose

This append-only addendum records the public-safe Macintosh environment profile for the Phase 2B three-layer communication, billing, handshake, certificate/trust, request, and reply taxonomy.

This public WAVE record does not publish passwords, private keys, private certificates, raw tokens, cookies, session material, private Wi-Fi labels, IP addresses, MAC addresses, serial numbers, Apple IDs, phone numbers, recovery codes, MFA codes, private legal materials, or operational secrets.

## Public-safe Macintosh environment

```text
MAC PROFILE 1:
- MacBook Air, 2015
- Operating system: Monterey, owner-stated
- Primary owner/operator context: William S. Davis II / billydeeii136 public account context
- Local login details reduced in public record
- Wi-Fi/home-network route: owner cable-ISP and private Wi-Fi route; private Wi-Fi label withheld from public record
- Bluetooth connectivity: present
- SSH connectivity: present where owner-configured and authorized
- Interdevice connectivity: connects to other owner devices through authorized Wi-Fi, Bluetooth, SSH, and home-network routes

MAC PROFILE 2:
- MacBook Air, 2015
- Owner-provided nickname/local-user label reduced in public record
- Wi-Fi/home-network route: owner cable-ISP and private Wi-Fi route; private Wi-Fi label withheld from public record
- Bluetooth connectivity: present
- SSH connectivity: present where owner-configured and authorized
- Interdevice connectivity: connects to other owner devices through authorized Wi-Fi, Bluetooth, SSH, and home-network routes

MAC PROFILE 3:
- MacBook Pro, 2012
- Operating system: Yosemite, owner-stated
- Owner-provided local login/display label reduced in public record
- Wi-Fi/home-network route: owner cable-ISP and private Wi-Fi route; private Wi-Fi label withheld from public record
- Bluetooth connectivity: present
- SSH connectivity: present where owner-configured and authorized
- Interdevice connectivity: connects to other owner devices through authorized Wi-Fi, Bluetooth, SSH, and home-network routes
```

## Required Phase 2B classification

For each AI-agent, AI-chatbot, CLI, IDE extension, terminal tool, browser tool, local model, MCP server, BYOK route, or cloud provider candidate that uses any Mac profile, classify:

```text
origin Mac profile;
destination device or provider;
origin layer;
destination layer;
GUI app involved yes/no;
CLI/local runtime involved yes/no;
cloud/provider control-plane involved yes/no;
Wi-Fi route involved yes/no;
Bluetooth route involved yes/no;
SSH route involved yes/no;
Git/GitHub route involved yes/no;
macOS keychain/credential-store class;
Git credential-helper class;
SSH agent class;
IDE extension token-storage class;
OAuth browser-callback class;
certificate/trust class;
request class;
expected reply class;
billing/quota/entitlement check requested yes/no;
code execution local/remote/hybrid/none/unknown;
MCP route involved yes/no;
BYOK route involved yes/no;
Gatekeeper/Vault route involved yes/no;
private value published no.
```

## Billing and entitlement boundary

Mac-to-Mac, Mac-to-phone, Wi-Fi, Bluetooth, SSH, and home-network connectivity are connection classes. They do not by themselves prove authorization for provider cloud access, paid resource use, hidden entitlement use, subscription use, token/quota consumption, certificate transfer, credential transfer, or third-party service access.

AI-provider billing remains separate from device connectivity. Each candidate must be evaluated by provider account, subscription, token/quota, API, model, code-execution, license, terms, local/offline route, BYOK route, MCP route, and Gatekeeper/Vault status.

## Negative boundary

Unknown Mac profile is not approval.
Unknown login context is not approval.
Unknown OS version is not approval.
Unknown credential-store route is not approval.
Unknown certificate/trust route is not approval.
Unknown billing model is not zero cost.
Unknown subscription status is not authorization.
Unknown entitlement is not an entitlement.
Unknown provider route is not approved.
Unknown license status is not authorization.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_WIFI_LABEL_PUBLICATION: confirmed
NO_RAW_CERTIFICATE_VALUES: confirmed
PHASE_2B_MACINTOSH_ENVIRONMENT: active
