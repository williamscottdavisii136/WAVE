# Phase 2C Model Mode Module Enumeration and Revenue Delta Protocol

Date: 2026-07-31
Repository posture: public-safe WAVE record
Issue linkage: Phase 2B/2C device, billing, proxy, and consumer-protection research lane

## Purpose

This record converts the prior billing-risk and consumer-protection research lane into a product-by-product enumeration protocol.

The R&D question is not merely whether an AI product has paid usage. The R&D question is which combination of mode, model, module, agent harness, tool path, cloud route, and billing meter is selected by default or encouraged by workflow design, and whether a lower-cost lawful route would complete the same task with equal or better practical performance.

## Required enumeration fields

For every tested AI agent, AI chatbot, coding agent, IDE assistant, terminal agent, open-source agent attached to paid infrastructure, or closed-source AI application, capture:

1. Product name.
2. Product category.
3. Closed-source / open-source / hybrid status.
4. Paid plan, subscription, credit, token, quota, hosted-compute, marketplace, connector, or API billing mechanism.
5. Available modes.
6. Available models.
7. Available modules / tool paths.
8. Default mode on first run or new task.
9. Default model on first run or new task.
10. Whether auto-select is enabled.
11. Whether premium / max / pro / long-context / cloud / agentic / hosted execution is selected.
12. Whether lower-cost model or mode exists.
13. Whether local, offline, BYOK, MCP, self-hosted, included-plan, or zero-incremental-cost route exists.
14. Whether the lower-cost route is visible to a lay user.
15. Whether switching requires technical knowledge.
16. Whether tool calls, cloud runs, connectors, code execution, storage, embeddings, retrieval, search, OCR, screenshots, browser control, terminal use, or agent loops are billed separately.
17. Whether task-finality is clear.
18. Whether optional follow-up work is marked optional before additional cost.
19. Cost / credits / token / quota consumed by default route.
20. Cost / credits / token / quota consumed by lower-cost route.
21. Completion quality comparison.
22. Time-to-completion comparison.
23. Owner approval / consent evidence.
24. Public pricing or documentation source.
25. Screenshot / receipt / log / proxy classification source.

## Initial named-product seed matrix

### Warp / Oz / Warp Agent

Public documentation indicates that Warp uses a credit-based AI billing model, that credit use varies by model, context, tools, task complexity, and cloud hosting, and that smaller/faster models generally consume fewer credits than larger reasoning models. Warp documentation also identifies Local Agents, Cloud Mode, Agent Mode, Generate, AI Autofill, BYOK/BYOLLM, model choice, and Auto cost-efficiency as relevant billing and mode-control surfaces.

Seed fields:

- Product: Warp / Oz / Warp Agent.
- Modes/modules: Local Agent, Cloud Agent / Cloud Mode, Agent Mode, Generate, AI Autofill, Active AI, model picker, BYOK/BYOLLM, integrations, tool calls, terminal use.
- Model controls: curated model list, model choice, automatic model selection, Auto cost-efficiency.
- Cost drivers: selected model, token/context size, codebase size, tool calls, cloud-hosting fee for cloud agents, add-on credits, auto reload if enabled.
- High-cost indicator: documentation states Claude Opus-class models tend to consume the most tokens/credits, followed by other high-capability models.
- Lower-cost / owner-control indicator: Auto cost-efficiency, BYOK/BYOLLM, local/self-hosted agent routes where available, explicit spend limits, disabling auto reload, and choosing lightweight models where adequate.

Sources reviewed:

- https://docs.warp.dev/support-and-community/plans-and-billing/credits
- https://docs.warp.dev/support-and-community/plans-and-billing/add-on-credits
- https://docs.warp.dev/support-and-community/plans-and-billing/pricing-faqs
- https://docs.warp.dev/agent-platform/getting-started/faqs
- https://docs.warp.dev/agent-platform/capabilities
- https://docs.warp.dev/agent-platform/capabilities/computer-use

### Visual Studio Code / GitHub Copilot

Public documentation indicates that VS Code supports built-in chat/agent workflows, language model selection, Ask/Edit/Agent or Agent/Plan/Ask style workflows depending on interface, third-party agents, local/cloud agents, BYOK, permissions, and model picker controls. Public GitHub documentation states Copilot cost depends on the model and tokens consumed, with AI credits and premium-request concepts; VS Code documentation also describes auto model selection.

Seed fields:

- Product: Visual Studio Code with GitHub Copilot / agents.
- Modes/modules: Ask, Edit, Agent, Plan, local agents, cloud agents, third-party agents, chat sessions, tool calls, terminal commands, file reads, file edits, search, MCP/custom tools, BYOK.
- Model controls: language model picker, auto model selection, organization policy controls, BYOK provider models.
- Cost drivers: model selected, token/context usage, premium requests, AI credits, cloud-agent execution, tool loops, context expansion.
- High-cost indicator: premium models and agentic/cloud/tool-loop use may produce higher usage than direct ask/edit/local work.
- Lower-cost / owner-control indicator: Ask or Plan before Agent, local/self-hosted where available, BYOK where lawful, explicit model picker, permission controls, disabling or avoiding premium-model enhancements, reducing context, using lower-cost models when sufficient.

Sources reviewed:

- https://code.visualstudio.com/docs/agents/overview
- https://code.visualstudio.com/docs/agents/chat-view
- https://code.visualstudio.com/docs/chat/chat-overview
- https://code.visualstudio.com/docs/agent-customization/language-models
- https://code.visualstudio.com/docs/agents/concepts/language-models
- https://code.visualstudio.com/blogs/2025/09/15/autoModelSelection
- https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing

### Visual Studio / GitHub Copilot

Public Microsoft documentation indicates that Visual Studio supports GitHub Copilot Chat, Agent Mode, Plan Agent, model picker access, custom/BYOM models in supported contexts, and settings for premium model use in non-chat interactions.

Seed fields:

- Product: Visual Studio with GitHub Copilot.
- Modes/modules: Copilot Chat, Agent Mode, Plan Agent, terminal/tool confirmations, C++ code-editing tools where enabled, model picker, custom/BYOM model support in supported chat contexts.
- Model controls: Visual Studio model picker; Microsoft documentation states Visual Studio 17.14 uses GPT-4.1 as the default model for GitHub Copilot in Visual Studio.
- Cost drivers: GitHub Copilot plan, model, premium requests/AI credits where applicable, agentic tool use, non-chat premium model enhancement if enabled, cloud agents if used.
- High-cost indicator: Agent Mode and premium/non-chat enhancements require separate classification from ordinary completion or low-cost chat.
- Lower-cost / owner-control indicator: Plan Agent before implementation, model picker, disabling non-chat premium enhancement where appropriate, BYOK/custom model where available and authorized, approval before terminal/tool use.

Sources reviewed:

- https://learn.microsoft.com/en-us/visualstudio/ide/copilot-agent-mode?view=vs-2022
- https://learn.microsoft.com/en-us/visualstudio/ide/copilot-plan-agent?view=visualstudio
- https://learn.microsoft.com/en-us/visualstudio/ide/copilot-select-add-models?view=visualstudio
- https://learn.microsoft.com/en-us/visualstudio/ide/copilot-usage-and-models?view=visualstudio
- https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing

### OpenAI ChatGPT / Work / Codex

Public OpenAI Help Center documentation indicates that ChatGPT includes Chat, Work, and Codex experiences, that Work follows the same usage structure as Codex, and that Codex and some advanced/flexible features use credits or token-based rate cards depending on plan and feature. Public OpenAI documentation also describes model picker behavior, Instant / Thinking / Pro style ChatGPT models or model modes, Codex model configuration, and different credit rates for higher-capability modes.

Seed fields:

- Product: ChatGPT, ChatGPT Work, Codex, Codex CLI/IDE extension.
- Modes/modules: Chat, Work, Codex, Codex CLI, Codex IDE extension, model picker, credits, Work agent runs, Codex tasks, Excel/Sheets/PowerPoint/Workspace Agent where available.
- Model controls: ChatGPT model picker; Codex CLI/IDE model picker, `-m` flag, or config file.
- Codex model note: OpenAI Help Center states Codex supports the GPT-5.1-Codex model family, with Max by default and optional Mini, depending on CLI/IDE version and configuration.
- Cost drivers: plan limits, credits, token usage, task complexity, codebase size, long sessions, context, advanced feature credits, Work/Codex usage structure, rate-card model/mode selection.
- High-cost indicator: Pro/Thinking/Max/long-running agent tasks and high-context coding workflows must be classified separately from Instant/Mini/local/offline routes.
- Lower-cost / owner-control indicator: use Mini where adequate, model picker, `-m` selection/configuration, local/offline/BYOK/MCP route where lawful and applicable, stopping task at completion, explicit owner approval before credit pool or overage use.

Sources reviewed:

- https://help.openai.com/en/articles/20001275-chatgpt-work-and-codex
- https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan
- https://help.openai.com/en/articles/20001106-codex-rate-card
- https://help.openai.com/en/articles/12642688-using-credits-for-flexible-usage-in-chatgpt-free-go-plus-pro
- https://help.openai.com/en/articles/11481834-chatgpt-rate-card
- https://help.openai.com/en/articles/11909943-gpt-5-1-in-chatgpt

## Revenue-delta test

For each product and task:

DEFAULT_ROUTE_COST = credits/tokens/quota/hosted-compute consumed by default mode + default model + default modules.

LOW_COST_ROUTE_COST = credits/tokens/quota/hosted-compute consumed by the lower-cost lawful mode + lower-cost model + reduced modules.

REVENUE_DELTA = DEFAULT_ROUTE_COST - LOW_COST_ROUTE_COST.

PERFORMANCE_DELTA = completion quality, time-to-completion, correctness, and user satisfaction difference between the default and low-cost route.

If the low-cost route produces equal or better performance at lower cost, classify the default route as a potential excessive effective-cost, price-gouging indicator, or billing-transparency risk, subject to product-specific evidence.

## Controlled terms

Use these terms:

- model-mode-module enumeration
- effective-cost comparison
- revenue-delta test
- lower-cost lawful route
- zero-incremental-cost route
- cost-control route
- owner-approved paid-route escalation
- price-gouging indicator
- excessive effective-cost indicator
- billing-transparency risk
- consumer-consent risk

Do not use unsupported provider-specific accusations unless tied to product-specific evidence.

## Boundary

This record supports public-interest consumer-protection R&D, billing transparency, owner consent, cost-control routing, and agency-ready evidence classification.

It does not authorize billing circumvention, subscription circumvention, token/quota/rate-limit evasion, credential capture, session theft, certificate forgery, unauthorized third-party access, public interception, or public service exposure.
