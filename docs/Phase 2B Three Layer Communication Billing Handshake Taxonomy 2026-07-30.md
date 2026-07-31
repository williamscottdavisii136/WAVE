# Phase 2B Three-Layer Communication Billing Handshake Taxonomy

## Purpose

This append-only public-safe WAVE record adds the Phase 2B layer to the WSD private home-network educational/R&D project.

Phase 2B corrects the billing-study model by separating each AI agent, AI chatbot, open-source AI agent, and open-source chatbot candidate into three communication layers:

```text
LAYER 1 — DEVICE / APPLICATION SURFACE
smartphone, Mac, laptop, desktop app, browser app, GUI app, IDE extension, mobile app, desktop client, local app storage, keychain/credential store, app-store subscription surface, voice-to-code surface.

LAYER 2 — COMMAND-LINE / LOCAL RUNTIME SURFACE
terminal, shell, Warp, VS Code terminal, Xcode command-line tools, local agent runner, CLI, GitHub CLI, Codex/Claude/OpenAI/Cursor CLI or extension runtime, local LLM, local MCP server, local proxy/traffic-mediation lab, local logs/receipts.

LAYER 3 — CLOUD / PROVIDER CONTROL PLANE
provider API, SaaS account, cloud model endpoint, billing service, subscription service, entitlement service, quota service, token meter, credit ledger, hosted code execution, hosted tools/plugins/connectors, marketplace, account/org/workspace/project tenant.
```

This is not a secret-disclosure record and must not contain private tokens, certificate values, private keys, cookies, session values, credential values, account identifiers beyond public-safe labels, private network details, private billing details, or local proxy configuration.

## Phase 2B question set

For each candidate, the study must answer the following without publishing secrets:

```text
1. Which layer initiates the request?
2. Which layer receives the request?
3. Which layer owns the billing event?
4. Which layer owns the subscription entitlement?
5. Which layer owns the quota or token meter?
6. Which layer owns code execution?
7. Which layer stores credentials or account state?
8. Which layer performs authentication?
9. Which layer receives authorization, entitlement, quota, billing, or rate-limit responses?
10. Which layer may operate locally or offline without a cloud event?
11. Which layer requires provider/cloud access before use?
12. Which layer may be simulated, mocked, blocked, cached, or locally returned inside the private R&D lab for observation only?
```

## Handshake taxonomy

Each candidate must be classified by handshake type and by layer:

```text
TRANSPORT HANDSHAKE:
HTTPS/TLS, WebSocket, SSH, Git, local socket, localhost HTTP, stdio, MCP stdio, MCP HTTP/SSE/streamable HTTP, browser extension bridge, app deep link, mobile app callback, device-code flow, unknown.

AUTHENTICATION HANDSHAKE:
account login, OAuth, OIDC, device authorization flow, API key, SSH key, personal access token, session cookie, client secret, certificate, mTLS, platform keychain/credential manager, Gatekeeper/Vault BYOK route, no-auth local route, unknown.

CERTIFICATE / TRUST HANDSHAKE CLASSIFICATION:
public TLS certificate chain, platform trust store, developer code-signing certificate, app notarization/signing, SSH host key, mTLS client certificate, local development certificate, lab/self-signed development certificate, certificate pinning behavior, unknown.

ENTITLEMENT HANDSHAKE:
plan check, seat check, workspace/org/project check, app-store receipt check, marketplace license check, model-access check, beta/grant/research entitlement check, free-tier check, education/R&D entitlement check, unknown.

METERING HANDSHAKE:
token count, message count, request count, run count, step count, tool/function/MCP-call count, code-execution seconds/minutes, compute units, credits, storage, logs, artifacts, vector storage, bandwidth/egress, seats, unknown.
```

Raw secret values must never be published. Only the class of handshake may be recorded.

## Request/response classification

For each candidate, Phase 2B must identify the public-safe shape of request and response, not private values.

```text
REQUEST CLASSIFICATION:
origin layer;
destination layer;
endpoint class;
method class;
transport class;
auth class;
certificate/trust class;
account/workspace/project/tenant class;
model/tool/agent requested;
code-execution requested yes/no;
local/offline route available yes/no;
MCP route involved yes/no;
BYOK route involved yes/no;
billing/quota/entitlement check requested yes/no;
private value published no.

EXPECTED RESPONSE CLASSIFICATION:
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

## Billing by layer

Billing must be classified by where the charge or entitlement is controlled:

```text
DEVICE / APPLICATION BILLING:
app-store subscription, in-app purchase, desktop app license, local app license, extension license, device-bound entitlement, local-only no-billing route.

COMMAND-LINE / LOCAL RUNTIME BILLING:
local-only no-billing execution, owner machine compute, local LLM, local MCP server, CLI plan check, CLI API-key usage, BYOK provider billing, GitHub Actions/minutes if used, local storage/logs/artifacts, extension runtime entitlement.

CLOUD / PROVIDER BILLING:
SaaS subscription, user seat, org/workspace/project subscription, API usage, token meter, credit meter, model entitlement, hosted tool execution, hosted code execution, connector/plugin/marketplace billing, storage/vector/log billing, egress/bandwidth billing, overage/top-up billing.
```

A candidate may touch more than one billing surface at once. A GUI plan, CLI plan, API key, cloud token meter, hosted code sandbox, and extension marketplace license may each have a different billing rule.

## Mac / smartphone / application communication layer

For the user's Mac, smartphone, computer, or laptop environment, the study must separately classify:

```text
macOS keychain / credential store use;
iOS or Android app credential store use;
browser profile/session use;
desktop app login state;
CLI config file use;
IDE extension token storage;
Git credential helper use;
SSH agent use;
app-store or marketplace receipt check;
OAuth browser callback;
local app-to-cloud request;
local app-to-CLI request;
CLI-to-cloud request;
GUI-to-local-runtime request;
voice-to-code surface converting spoken or typed English into command/code automation.
```

No raw local path, token, cookie, certificate value, private device identifier, or private network identifier may be published in WAVE.

## Private R&D proxy observation layer

Inside the private owner-controlled home-network educational/R&D lab, proxy/traffic mediation may be used to observe and classify layer behavior using public-safe lab responses.

Allowed public-safe observation categories include:

```text
network unavailable;
cloud route unavailable;
local route available;
local route unavailable;
OAuth required;
API key required;
certificate/trust error;
account login required;
workspace/org/tenant required;
subscription required;
entitlement missing;
quota warning;
quota exceeded;
token limit reached;
rate limit reached;
model unavailable;
tool unavailable;
code execution unavailable;
BYOK route available;
BYOK route rejected;
MCP server unavailable;
MCP auth required;
license review required;
provider unavailable;
local/offline fallback accepted;
local/offline fallback rejected.
```

These observations are for educational/R&D classification only. A lab response is not proof of real provider entitlement and must not be used to obtain unauthorized production access, paid resources, provider compute, account state, hidden entitlements, or third-party services.

## Layer status values

```text
ALLOW_LOCAL_ONLY
ALLOW_DEVICE_LOCAL_ONLY
ALLOW_COMMAND_LINE_LOCAL_ONLY
ALLOW_OPEN_SOURCE_LOCAL
ALLOW_OFFICIAL_SANDBOX
ALLOW_EDUCATION_R_AND_D
ALLOW_INCLUDED_ENTITLEMENT
ALLOW_FREE_TIER_VERIFIED
ALLOW_BYOK_OWNER_PROVIDED
ALLOW_MCP_VERIFIED
ALLOW_AUTHORIZED_THIRD_PARTY
REQUIRES_DEVICE_TERMS_REVIEW
REQUIRES_CLI_TERMS_REVIEW
REQUIRES_CLOUD_TERMS_REVIEW
REQUIRES_BILLING_REVIEW
REQUIRES_SUBSCRIPTION_REVIEW
REQUIRES_TOKEN_QUOTA_REVIEW
REQUIRES_CODE_EXECUTION_REVIEW
REQUIRES_CERTIFICATE_TRUST_REVIEW
REQUIRES_GATEKEEPER_VAULT
REQUIRES_OWNER_APPROVAL
BLOCK_PUBLIC_UNAUTHORIZED_ACCESS
BLOCK_CREDENTIAL_MISUSE
BLOCK_TOKEN_FORGERY
BLOCK_CERTIFICATE_FORGERY
BLOCK_UNAUTHORIZED_BILLING_CIRCUMVENTION
BLOCK_UNAUTHORIZED_ENTITLEMENT_CIRCUMVENTION
BLOCK_LICENSE_CIRCUMVENTION
BLOCK_TRIAL_CYCLING
BLOCK_RATE_LIMIT_EVASION
UNRESOLVED_UNKNOWN_LAYER
UNRESOLVED_UNKNOWN_HANDSHAKE
UNRESOLVED_UNKNOWN_BILLING
UNRESOLVED_UNKNOWN_PROVIDER_ROUTE
```

## Negative boundary

This Phase 2B study does not authorize public unauthorized access, credential misuse, token forgery, certificate forgery, unauthorized billing circumvention, unauthorized entitlement circumvention, license circumvention, trial cycling, rate-limit evasion, secret publication, private network publication, or unauthorized production access.

Unknown layer is not approval.
Unknown handshake is not approval.
Unknown billing model is not zero cost.
Unknown subscription status is not authorization.
Unknown entitlement is not an entitlement.
Unknown token/quota status is not authorization.
Unknown code-execution route is not approved.
Unknown provider route is not approved.
Unknown license status is not authorization.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_NETWORK_DETAILS: confirmed
NO_RAW_CERTIFICATE_VALUES: confirmed
PHASE_2B_THREE_LAYER_HANDSHAKE_SCHEMA: active
