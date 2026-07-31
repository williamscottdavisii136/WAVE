# Phase 2C Knowledge Cutoff Disclosure and Stale Knowledge Consumer Risk

Date: 2026-07-31

## Purpose

This addendum records an additional Phase 2C R&D lane: many consumers using AI chatbots, AI agents, coding agents, hybrid open/closed products, and paid hosted AI systems may not understand that the model's built-in knowledge can be months or years behind current reality unless live search, retrieval, connector access, file access, or another current-data route is explicitly active.

## Owner-stated R&D concern

Consumers often interact with AI systems as though the system has current knowledge. In reality, many AI agents and chatbots rely on a model snapshot with a knowledge cutoff. If the product does not clearly disclose the cutoff, or if the product uses humanlike confidence while relying on stale training data, the design may create consumer-protection, billing-transparency, informed-consent, professional-reliance, and productivity risks.

## Public-source example: Claude

Official Anthropic support and platform documentation identify model-specific knowledge/training cutoffs.

Public-source facts to preserve:

- Anthropic's Claude help page states that each model has a knowledge cutoff and that the model may not have accurate information about events after that cutoff.
- Anthropic's help page lists Claude Opus 5 as trained on data up until May 2026.
- The same page lists Claude Sonnet 5 and Claude Fable 5 as trained on data up until January 2026.
- The same page lists Claude Haiku 4.5 as trained on data up until July 2025.
- The same page lists Claude Opus 3 as trained on data up until August 2023.
- Anthropic's platform docs list reliable knowledge cutoff and training data cutoff as distinct concepts and show different cutoffs by model.

Sources:

- https://support.claude.com/en/articles/8114494-how-up-to-date-is-claude-s-training-data
- https://platform.claude.com/docs/en/about-claude/models/overview

## Phase 2C research classification

This lane applies to:

- top AI chatbots;
- top AI agents;
- coding agents;
- terminal agents;
- app builders;
- closed-source products;
- hybrid open/closed products;
- open-source products using paid hosted APIs;
- partially open products using closed hosted models;
- subscription systems;
- token/credit systems;
- workspace/seat/project billed systems.

## Risk labels

- KNOWLEDGE_CUTOFF_DISCLOSURE_RISK
- STALE_KNOWLEDGE_RISK
- OUTDATED_TRAINING_DATA_RISK
- CURRENTNESS_MISREPRESENTATION_RISK
- FALSE_CURRENT_AUTHORITY_RISK
- PROFESSIONAL_RELIANCE_RISK
- CONSUMER_NONCONSENT_RISK
- BILLING_FOR_STALE_OUTPUT_RISK
- LIVE_SEARCH_ABSENCE_RISK
- RETRIEVAL_NOT_ACTIVE_RISK
- CONNECTOR_NOT_ACTIVE_RISK
- MODEL_SNAPSHOT_DISCLOSURE_RISK
- VERSION_AND_CUTOFF_CAPTURE_REQUIRED

## Required matrix fields

For each tested product, the Phase 2C matrix must capture:

- product name;
- product category;
- model name;
- model version / model ID;
- model mode;
- module/tool route;
- training data cutoff;
- reliable knowledge cutoff;
- current-date gap;
- whether live search is active;
- whether retrieval is active;
- whether file/connector access is active;
- whether the UI discloses cutoff before use;
- whether the system warns that information may be stale;
- whether the user is billed for stale/confident output;
- whether a lower-cost current-data route exists;
- whether a local/open-source/retrieval route can provide more current information;
- evidence location.

## Evidence boundary

This addendum does not state that every provider hides knowledge cutoffs or that every model is a year behind. The verified fact is that model cutoffs vary by product and model. The consumer-protection issue is whether the cutoff, currentness limit, and live-data status are clearly disclosed before the user relies on or pays for the output.

## Zero-cost / lawful-use boundary

Testing knowledge cutoff and currentness does not authorize billing bypass, subscription circumvention, token/quota evasion, credential misuse, unauthorized access, or public interception. The research lane supports lawful consumer-protection testing, billing transparency, informed consent, model/mode/module enumeration, and owner-authorized current-data validation.
