# Phase 2B Protected Subnet Isolation Addendum

## Purpose

This append-only addendum records the owner-provided architecture rule that the Phase 2B home-network/R&D device mesh operates on an owner-controlled subnet that is isolated from kids, guests, visitors, non-authorized household users, non-authorized smart-device traffic, Bluetooth-only peer traffic, and ordinary internet/Wi-Fi clients unless expressly approved into the subnet.

This is a public-safe record. It does not publish SSIDs, Wi-Fi passwords, IP addresses, subnet masks, router addresses, MAC addresses, Bluetooth addresses, hostnames, usernames, SSH keys, tokens, certificates, cookies, sessions, account numbers, phone numbers, serial numbers, IMEIs, or private operational secrets.

## Corrected owner-provided rule

```text
PROTECTED SUBNET: present, owner-stated.
AUTHORIZED SUBNET NODES: owner-controlled cell phones, MacBooks, and printer as previously registered, subject to device-specific verification.
NON-AUTHORIZED / OUTSIDE SUBNET DEVICES: kids, guests, visitors, non-authorized household users, ordinary internet/Wi-Fi clients, non-authorized smart-device traffic, and other devices not approved into the protected subnet.
SMART TV / STREAMING DEVICE TRAFFIC: not assumed to have protected-subnet access unless separately approved and classified.
BLUETOOTH: peer-to-peer / near-field local device connectivity; not subnet access by itself.
INTERNET OVER CABLE ISP / WI-FI: internet route exists separately from protected-subnet authorization.
```

## Architecture distinction

```text
PROTECTED SUBNET:
Approved local IP segment used for owner-controlled devices and authorized local services.

GUEST / GENERAL WI-FI / NON-AUTHORIZED DEVICE SPACE:
Devices may have ordinary internet access or local peripheral behavior but are not approved into the protected subnet unless expressly classified.

BLUETOOTH:
Peer-to-peer device/peripheral relationship. Bluetooth visibility or pairing does not place a device on the protected IP subnet.

SMART TV / STREAMING / GENERAL IOT:
May have Wi-Fi or internet access but does not receive protected-subnet access unless separately authorized and classified.

CABLE ISP / INTERNET ROUTE:
Provides internet egress. Internet egress does not equal protected-subnet access.
```

## What must be in place for isolation

```text
separate SSID, VLAN, guest network, access-control list, firewall policy, router isolation rule, device allowlist, or equivalent local segmentation;
protected subnet address space or routed local segment;
DHCP/static assignment controlled for approved devices;
client isolation or inter-client restrictions where required;
firewall rules denying non-authorized local access;
printer and discovery rules limited to approved devices where required;
SSH allowed only between approved nodes;
Bluetooth treated as peer-to-peer only and not as subnet admission;
smart-TV/streaming/IoT devices not treated as protected-subnet members unless separately approved;
logs/receipts avoid private identifiers and raw secrets.
```

## Phase 2B classification fields

Each device must now include:

```text
protected_subnet_member: yes / no / unknown
internet_access: yes / no / unknown
guest_or_general_network_member: yes / no / unknown
bluetooth_peer_only: yes / no / unknown
smart_device_iot_class: yes / no / unknown
subnet_access_basis: approved owner node / guest-general / denied / unknown
ssh_allowed_to_protected_nodes: yes / no / unknown
printer_allowed_from_protected_nodes: yes / no / unknown
cloud_provider_access: separate evaluation required
ai_provider_billing: separate evaluation required
private_value_published: no
```

## Billing and authorization boundary

Protected-subnet membership is a local-network authorization state. It is not AI-provider billing authorization, subscription authorization, token/quota authorization, credential-transfer authorization, certificate-transfer authorization, or approval to access third-party services.

Cloud/provider billing becomes relevant only when a provider-controlled service receives, processes, meters, stores, syncs, indexes, embeds, analyzes, executes, or otherwise handles a request or data.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_NETWORK_IDENTIFIERS: confirmed
PROTECTED_SUBNET_ISOLATION: active
