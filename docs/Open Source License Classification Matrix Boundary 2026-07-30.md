# Open Source License Classification Matrix Boundary

## Purpose

This append-only WAVE record adds the license-classification layer to the WSD private home-network R&D zero-incremental-cost doctrine.

The point is to prevent any future reader, agent, tool, or workflow from treating the words "open source" or "free" as a blanket authorization. Each program, application, model, server, library, extension, CLI, IDE integration, agent, chatbot, provider route, and MCP server must be tied to its actual license or terms before it is treated as allowed for the WSD R&D architecture.

## Operating phrase

```text
license-classified owner-authorized zero-incremental-cost R&D routing
```

## Source-of-truth rule

The source of authority is the actual license text, terms of service, sandbox agreement, grant, entitlement document, provider documentation, or owner-controlled authorization record applicable to the specific component.

Do not infer authorization from a marketing label, repository topic, README summary, model card label, package-manager shorthand, or another project's description.

## License classes to name and track

Each component should be classified by exact license identifier where known. Use SPDX identifiers where available.

| Class | Common identifiers / examples | R&D treatment |
|---|---|---|
| Permissive open-source | MIT, Apache-2.0, BSD-2-Clause, BSD-3-Clause, ISC, Zlib | Usually compatible with local/private R&D, modification, and redistribution subject to notice, attribution, license text, patent, and disclaimer requirements. Actual license text controls. |
| Weak copyleft | LGPL-2.1-only, LGPL-2.1-or-later, LGPL-3.0-only, LGPL-3.0-or-later, MPL-2.0, EPL-2.0 | May permit use with separate works or specified file/library boundaries, but modification/distribution obligations must be tracked. Actual license text controls. |
| Strong copyleft | GPL-2.0-only, GPL-2.0-or-later, GPL-3.0-only, GPL-3.0-or-later | May impose source-code and reciprocal-license obligations when distributing derivative works. Private local R&D may differ from distribution. Actual license text controls. |
| Network copyleft | AGPL-3.0-only, AGPL-3.0-or-later | May impose source-availability obligations when modified software is used to provide network interaction. Actual license text controls. |
| Public-domain / dedication style | CC0-1.0, Unlicense, public-domain dedication, jurisdiction-specific public-domain statement | Must verify validity, disclaimer language, and project-specific conditions. Actual text controls. |
| Source-available / non-OSI | BSL, SSPL, Elastic License, PolyForm, Commons Clause variants, research-only/custom licenses | Not automatically open-source in the OSI sense. Must review field-of-use, production-use, hosted-service, commercial, research, and redistribution restrictions. |
| Model/data licenses | OpenRAIL variants, Creative Commons variants, custom model licenses, dataset licenses, Hugging Face model card license fields | Must track model, weights, dataset, tokenizer, training data, output-use, attribution, research-only, commercial-use, and redistribution conditions separately. |
| Provider/platform terms | OpenAI, Anthropic/Claude, GitHub, GitHub Copilot, VS Code marketplace, Warp, Codex, cloud APIs, SaaS tools | These are not replaced by open-source component licenses. API, account, subscription, quota, cloud, entitlement, and provider terms must be checked separately. |
| Local/owner-created code | WSD-created code, owner-created scripts, local lab tools, private R&D configuration | Owner-controlled, but any embedded dependency, copied code, model, package, API, or provider route still carries its own license or terms. |

## Proxy-mediated R&D treatment

A component may be tested through the private home-network proxy R&D layer only when the license or terms permit the relevant local, offline, mocked, simulated, sandbox, development, educational, R&D, BYOK, MCP, included-entitlement, or other no-incremental-cost route.

The proxy-mediated R&D layer may test application behavior when internet access, quota indicators, entitlement signals, billing indicators, token routes, certificate routes, provider responses, or credential routes are blocked, simulated, mocked, cached, locally returned, or routed through owner-authorized lab responses.

This is not a license override. The proxy route must be license-classified and terms-checked.

## Required license matrix fields

Every significant component should be tracked with these fields:

```text
COMPONENT_NAME:
COMPONENT_TYPE: program / library / model / dataset / extension / CLI / MCP server / API / provider route / local script / other
SOURCE_REPOSITORY_OR_VENDOR:
VERSION_OR_COMMIT:
LICENSE_IDENTIFIER:
LICENSE_TEXT_LOCATION:
NOTICE_FILE_LOCATION:
TERMS_OF_SERVICE_LOCATION:
LOCAL_R_AND_D_ALLOWED: yes / no / unknown
OFFLINE_OR_MOCK_TESTING_ALLOWED: yes / no / unknown
MODIFICATION_ALLOWED: yes / no / unknown
DISTRIBUTION_ALLOWED: yes / no / unknown
NETWORK_SERVICE_USE_ALLOWED: yes / no / unknown
COMMERCIAL_OR_PRODUCTION_USE_ALLOWED: yes / no / unknown
ATTRIBUTION_REQUIRED: yes / no / unknown
NOTICE_REQUIRED: yes / no / unknown
PATENT_TERMS_PRESENT: yes / no / unknown
COPYLEFT_OR_SOURCE_OBLIGATION: none / weak / strong / network / unknown
BYOK_OR_PROVIDER_AUTH_REQUIRED: yes / no / unknown
ZERO_INCREMENTAL_COST_BASIS: local / open-source / included entitlement / sandbox / educational R&D / BYOK / MCP / third-party authorized / unknown
PUBLIC_SAFE_TO_REFERENCE_IN_WAVE: yes / no
PRIVATE_DETAILS_LOCATION: private repo / vault / local-only / not applicable
REVIEW_STATUS: verified / needs review / blocked
```

## Required guardrail

Open-source licensing may allow local use, modification, research, or redistribution depending on the license. It does not automatically authorize use of a separate SaaS provider, cloud resource, paid endpoint, subscription feature, quota entitlement, data-center resource, account, token, or third-party credential.

Unknown license status is not authorization.
Unknown cost is not zero cost.
Unknown entitlement is not an entitlement.
Unknown provider route is not approved.

## Public/private rule

WAVE may carry license classes, public source references, public license identifiers, public documentation references, non-secret status, routing, and review receipts.

WAVE must not carry private license copies, private account records, private credentials, private tokens, private certificates, vault contents, local proxy configuration, private network details, private legal materials, or private operational secrets.

## Preferred summary

```text
The WSD zero-cost R&D architecture is license-classified and owner-authorized. Each component must be mapped to its actual license or terms, such as MIT, Apache-2.0, BSD, GPL, LGPL, AGPL, MPL, EPL, model/data licenses, provider terms, or custom terms, before it is routed through local LLM, MCP/BYOK, proxy-mediated lab response, included entitlement, educational/R&D, authorized third-party resource, or other verified zero-incremental-cost mode.
```

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
LICENSE_CLASSIFICATION_REQUIRED: confirmed
