# Phase 2B — R&D Licensing Isolation No Public or Household Access Requirement

Date: 2026-07-30
Repository role: WAVE public-safe terminal / append-only architecture record
Status: owner-stated requirement, public-safe summary

## Purpose

This addendum records that the protected home-network subnet is not merely a technical convenience. It is a required control for the private R&D and licensing boundary.

The protected subnet exists to preserve an owner-controlled, private, no-public-access research environment for lawful license-governed testing, local device mapping, AI-agent/chatbot billing analysis, local/BYOK/MCP route classification, and zero-incremental-cost research controls.

## Required rule

```text
The R&D subnet must be isolated.
There is no public access.
There is no access by non-owner household users.
There is no access by kids, guests, visitors, or other non-authorized people in the home.
Devices outside the approved R&D node list are not subnet members.
```

## Authorized subnet class

```text
AUTHORIZED R&D SUBNET MEMBERS:
owner-controlled phones, MacBooks, printer, and other expressly approved lab nodes previously or later registered in the Phase 2B environment record.
```

## Excluded access class

```text
EXCLUDED FROM THE R&D SUBNET:
public users;
kids;
guests;
visitors;
non-authorized household users;
ordinary internet clients;
ordinary Wi-Fi clients;
non-approved smart TVs / streaming devices;
non-approved Bluetooth-only devices;
non-approved IoT devices;
any device not expressly approved into the R&D subnet.
```

## Network distinction

```text
PUBLIC INTERNET ACCESS:
not allowed into the protected R&D subnet.

ORDINARY HOME INTERNET / WIFI:
not equivalent to protected-subnet access.

BLUETOOTH:
peer-to-peer / near-field device connectivity only; not subnet admission.

SMART TV / STREAMING TRAFFIC:
not protected-subnet membership unless separately approved and classified.

SSH:
allowed only between approved nodes over an authorized IP route, with authorized credentials and device-level approval.
```

## Licensing and R&D consequence

The isolation requirement supports the following licensing controls:

```text
private home-network R&D only;
owner-authorized device access only;
no public service exposure;
no public credential relay;
no household-user access to the lab subnet;
no third-party or visitor access;
no provider entitlement assumption from local connectivity;
no subscription, token, quota, credential, or certificate authority inferred from subnet membership.
```

## Zero-cost / lawful-use boundary

This record preserves the existing rule:

```text
Zero-cost does not mean unauthorized free use.
Zero-cost means verified no incremental cost to the owner through a lawful local, included, open-source, BYOK, MCP, provider-granted, third-party-provided, educational, R&D, or otherwise authorized route.
```

Isolation is one of the controls used to keep the R&D environment private, owner-authorized, and license-governed.

## Publication boundary

No private SSID, password, IP address, subnet mask, router address, MAC address, serial number, IMEI, SSH key, API key, token, certificate, cookie, session, hostname, local username, private family detail, or credential material is published in this public record.
