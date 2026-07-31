# Phase 2B VLAN Segmentation Printer MacBook Phone Isolation Addendum

Date: 2026-07-30
Repository role: WAVE public-safe append-only record
Phase: 2B device/network environment mapping

## Owner-stated VLAN segmentation

The owner states that the protected R&D home-network environment has an additional VLAN segmentation layer:

- printers are on their own VLAN;
- MacBooks are on their own VLAN;
- phones are on their own VLAN.

No VLAN IDs, IP addresses, subnet masks, router addresses, MAC addresses, SSIDs, Wi-Fi passwords, SSH keys, credentials, tokens, certificates, serial numbers, IMEIs, hostnames, or local account details are included in this public record.

## Architecture consequence

VLAN segmentation means the local network is not a single flat LAN for all approved devices. The device classes are separated into local segments, and cross-segment communication requires explicit routing/firewall policy.

```text
PRINTER VLAN  -> local print/discovery services, if allowed
MACBOOK VLAN  -> owner MacBook hosts, terminal/SSH/MCP/workstation services, if allowed
PHONE VLAN    -> owner Samsung/phone nodes, Android app/terminal/SSH/client/server roles, if allowed
```

## Cross-VLAN rule

Cross-VLAN access is not automatic. It must be classified as one of the following:

```text
DENIED_BY_DEFAULT
ALLOW_PRINT_ONLY
ALLOW_DISCOVERY_ONLY
ALLOW_SSH_APPROVED_NODE_ONLY
ALLOW_FILE_TRANSFER_APPROVED_NODE_ONLY
ALLOW_MCP_OR_LOCAL_AGENT_APPROVED_NODE_ONLY
ALLOW_FULL_ROUTE_APPROVED_NODE_ONLY
UNVERIFIED
```

## Discovery consequence

Some local discovery systems assume same-subnet broadcast or multicast visibility. With VLAN segmentation, printer discovery, mDNS/Bonjour, SSDP, app discovery, and other broadcast/multicast systems may require a controlled relay, direct addressing, or explicit firewall/routing rule. Discovery visibility is not the same as service authorization.

## Security and licensing consequence

This VLAN segmentation is part of the private, owner-authorized R&D isolation boundary. It supports:

- no public access;
- no non-owner household access;
- no default access between device classes;
- approved-node-only SSH;
- approved-device-only printing;
- controlled inter-VLAN routing where needed;
- local/home-network R&D separation from public or ordinary household networks.

## Billing boundary

VLAN membership, subnet membership, Wi-Fi access, Bluetooth peer access, USB cable access, and SSH reachability are local network or local device states. They do not prove AI-provider billing authorization, subscription authorization, token/quota authorization, credential-transfer authorization, certificate-transfer authorization, or third-party service access.
