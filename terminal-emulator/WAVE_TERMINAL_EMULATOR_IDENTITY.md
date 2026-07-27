# WAVE Terminal Emulator Identity

## Controlling identity

WAVE is now classified as a public terminal-emulator control surface.

```text
REPOSITORY: williamscottdavisii136/WAVE
PUBLIC_ROLE: terminal emulator, relay surface, status console
EXECUTION_MODE: emulation and routing only
REAL_COMMAND_EXECUTION: not enabled in this public repository
PROTECTION: proprietary / all rights reserved
```

## Public boundary

WAVE may display a terminal-style prompt, public status messages, routing receipts, and command history. It is not a private data store and it is not a live shell executor.

## Terminal rule

```text
TERMINAL_PROMPT: WAVE>
DEFAULT_COMMAND_MODE: simulated public-safe commands
PUBLIC_ONLY: confirmed
```

## Initial public commands

```text
help
status
routes
receipt
relay
clear
version
```
