# Phase 2C — Mode / Module Combination Definition and Knowledge-Cutoff Pairing

Date: 2026-07-31
Repository: WAVE
Status: Public-safe, append-only R&D addendum

## Purpose

This addendum corrects and sharpens the Phase 2C definition of "mode" and "module" for AI-agent, AI-chatbot, coding-agent, programming-agent, terminal-agent, and open-source control testing.

A mode/module is not merely a generic feature label. In the R&D matrix, a mode/module must be treated as a combined route consisting of model identity, model age/currentness, operating mode, tool/module path, and billing consequence.

## Corrected definition

A mode/module combination includes at least the following:

1. provider or project;
2. product or application;
3. model name;
4. model family or generation;
5. model snapshot/version where available;
6. public training cutoff, reliable knowledge cutoff, or comparable currentness disclosure;
7. currentness gap measured as of the test date;
8. user-facing mode, such as chat, agent, reasoning, coding, search, research, edit, execute, terminal, background, or cloud-agent mode;
9. module/tool route, such as live search, retrieval, connector, file upload, code execution, terminal execution, MCP, BYOK, local model, vector/RAG, browser, computer-use, or hosted compute;
10. billing meter, such as subscription, token, credit, request, premium request, run, tool call, seat, workspace, storage, or hosted-compute meter;
11. default state;
12. availability of a lower-cost lawful route;
13. availability of a zero-incremental-cost owner-authorized route;
14. performance outcome;
15. evidence status.

## Owner-provided Claude example format

The owner identified the Claude currentness table as the correct pattern for mode/module pairing.

| Provider | Model | Public cutoff / training date | Approximate gap from 2026-07-31 | Mode/module implication |
|---|---|---:|---:|---|
| Anthropic / Claude | Claude Opus 5 | May 2026 | ~2 months | Newer/premium-currentness candidate; cost/currentness pairing must be captured. |
| Anthropic / Claude | Claude Sonnet 5 | January 2026 | ~7 months | Mid-currentness candidate; mode/tool/billing route must be captured. |
| Anthropic / Claude | Claude Fable 5 | January 2026 | ~7 months | Mid-currentness candidate; mode/tool/billing route must be captured. |
| Anthropic / Claude | Claude Haiku 4.5 | July 2025 | ~12 months | Older/cheaper-or-faster candidate; stale-knowledge risk must be captured. |
| Anthropic / Claude | Claude Opus 3 | August 2023 | ~35 months | Legacy model route; strong stale-knowledge and reliance-disclosure issue. |

## R&D rule

For every tested AI product, the matrix must capture the pairing between:

```text
MODEL + CUTOFF AGE + MODE + MODULE / TOOL ROUTE + BILLING METER + DEFAULT STATE
```

A product cannot be evaluated only by its brand name or product name. The route actually used must be identified.

## Cost/currentness catch-22

The owner-identified theory is that users may face a cost/currentness tradeoff:

1. older or cheaper models may carry stale knowledge;
2. newer or more current models may cost more;
3. live search, retrieval, connectors, file access, code execution, cloud-agent work, or hosted compute may add separate cost;
4. users may not understand that the model/mode/module route determines both currentness and billing;
5. a lawful local, open-source, BYOK, MCP, included, self-hosted, educational, or provider-granted route may complete the same task at zero incremental owner cost.

## Matrix consequence

The top-25 general AI applications, top-25 coding/programming applications, top-25 terminal/CLI applications, top-25 commercial AI agents/chatbots, and top-25 open-source control agents/chatbots must each be mapped against:

- model/version;
- cutoff/currentness gap;
- mode;
- module/tool route;
- default state;
- billing unit;
- currentness disclosure;
- lower-cost lawful route;
- zero-incremental-cost lawful route;
- performance comparison.

## Boundary

This addendum preserves the no-circumvention rule. Zero-cost implementation means lawful, owner-authorized, zero-incremental-cost routing. It does not mean billing bypass, subscription circumvention, token/quota evasion, credential misuse, unauthorized access, unauthorized interception, certificate forgery, or payment avoidance for services actually used.
