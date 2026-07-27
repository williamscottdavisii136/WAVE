# WAVE Terminal Emulator Command Routing Policy

## Command model

WAVE is a public terminal emulator and status console. The command interface is public-safe and simulated by default.

```text
COMMAND_SURFACE: terminal-emulator/
DEFAULT_MODE: simulated_public_safe
LIVE_SHELL_EXECUTION: disabled
PRIVATE_EXECUTION_BACKEND: separate private/local runner required before any real execution
```

## Allowed public command behavior

```text
display public status
show public route names
show public receipt templates
show emulator version
clear local screen display
```

## Public boundary

The public terminal emulator must not be used as a private repository reader, private account bridge, or live cross-account execution shell.

## Parallel phone coordination

Billy-side phone should treat WAVE as the public terminal/status surface and should continue to reply in Issue #2 or Issue #4 with the standard notice token.
