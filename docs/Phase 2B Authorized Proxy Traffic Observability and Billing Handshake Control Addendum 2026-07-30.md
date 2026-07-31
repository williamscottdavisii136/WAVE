# Phase 2B — Authorized Proxy Traffic Observability and Billing Handshake Control Addendum

Date: 2026-07-30
Repository role: WAVE public-safe append-only terminal record

## Purpose

This addendum records the owner-stated proxy and traffic-observability layer for the private R&D device/network environment.

The safe controlling terminology is:

- authorized packet observability
- authorized traffic classification
- authorized proxy mediation
- lab-response emulation
- entitlement-response simulation
- quota-response simulation
- billing-handshake classification
- provider-control-plane boundary mapping

The following unsafe or misleading terms are not controlling terms for this record:

- spoofing
- billing bypass
- subscription bypass
- credential bypass
- certificate forgery
- public interception
- unauthorized man-in-the-middle access

## Protected lab context

The proxy and observability layer is limited to the owner-controlled private R&D subnet/VLAN environment previously registered.

Public access is excluded.

Non-owner household access is excluded.

The proxy layer does not authorize access to third-party services, provider accounts, subscriptions, tokens, certificates, sessions, cookies, credentials, or paid resources.

## Architecture layer

The proxy layer exists to understand and classify how approved applications communicate across the stack:

1. device/application surface;
2. local network / VLAN / subnet / transport layer;
3. proxy / traffic-observability / routing-control layer;
4. cloud/provider control plane;
5. billing, subscription, entitlement, token, quota, metering, and code-execution ledgers.

## What the proxy may do inside the private R&D lab

Within owner-authorized scope, the proxy may classify or mediate:

- request origin;
- destination class;
- protocol class;
- transport class;
- authentication class;
- certificate/trust class;
- entitlement check class;
- token/quota/metering class;
- local/offline versus cloud/provider path;
- approved local block/allow/routing decision;
- approved lab-response emulation or mock response;
- public-safe receipt generation.

## TLS / certificate boundary

The record does not authorize certificate forgery, credential theft, session capture, or public interception.

TLS/certificate behavior may be classified only within lawful owner-authorized testing boundaries, using public-safe metadata and approved lab/test configuration.

No raw certificates, private keys, session cookies, tokens, API keys, passwords, device identifiers, or private network identifiers may be published in WAVE.

## Billing-handshake relevance

This layer is important because AI agents, chatbots, IDE extensions, local tools, model clients, hosted-code tools, connectors, plugins, and cloud apps may decide cost or entitlement through different ledgers:

- account ledger;
- workspace ledger;
- seat ledger;
- subscription ledger;
- token ledger;
- message ledger;
- request ledger;
- run ledger;
- tool/function/MCP-call ledger;
- hosted code-execution ledger;
- storage/artifact/vector ledger;
- connector/plugin/marketplace ledger;
- BYOK/MCP/local route ledger;
- rate-limit/quota ledger;
- trial/free-tier/research/education grant ledger.

The proxy layer records which ledger appears implicated. It does not bypass the ledger.

## Negative boundary

This addendum does not authorize:

- public interception;
- credential capture;
- session theft;
- certificate forgery;
- unauthorized man-in-the-middle activity;
- provider-billing circumvention;
- subscription circumvention;
- token/quota evasion;
- rate-limit evasion;
- hidden entitlement use;
- unauthorized access to third-party systems.

## Public-safe rule

WAVE may record only public-safe architecture, routing, control, and receipt information.

No raw secrets or private identifiers are to be committed.