# Phase 2B SSH Mesh Architecture Addendum

## Purpose

This addendum records the SSH mesh layer for the owner-controlled Phase 2B device environment.

This is public-safe. It does not publish IP addresses, MAC addresses, hostnames, usernames, passwords, SSH private keys, SSH public keys, known_hosts entries, certificates, tokens, phone numbers, serial numbers, IMEIs, private Wi-Fi identifiers, private network diagrams, account secrets, or operational secrets.

## Controlling rule

SSH is authenticated command, file, tunnel, or session access over an IP route.

SSH is not Bluetooth discovery. SSH is not Wi-Fi discovery. SSH is not proof of cloud/provider authorization. SSH requires an IP path, an SSH server on the target where applicable, an SSH client on the origin device, and valid authentication/trust material.

## SSH mesh architecture

```text
SSH CLIENT NODE -> AUTHORIZED IP ROUTE -> SSH SERVER NODE
```

The IP route may be:

```text
Wi-Fi LAN route;
USB tethered IP route where configured and authorized;
Bluetooth PAN route only if specifically configured and authorized;
local Ethernet/adapter route where present;
other owner-authorized local IP route.
```

## What must be in place

For an SSH mesh to function between owner-controlled nodes, the following must be in place for each permitted origin/destination pair:

```text
1. The origin device must have an SSH client.
2. The destination device must have an SSH server or SSH-capable service enabled.
3. The destination service must listen on an authorized port.
4. The devices must have IP reachability over Wi-Fi LAN, USB-tethered IP, Bluetooth PAN, or another authorized IP route.
5. Local firewall rules must allow the permitted SSH connection.
6. Router/gateway isolation, guest isolation, VPN, private relay, parental control, endpoint security, or local firewall must not block the route.
7. SSH host-key trust must be established or verified.
8. User authentication must be authorized by password, key, agent, certificate, Gatekeeper/Vault route, or other approved local credential method.
9. The target account/session must have only the privileges required for the approved task.
10. Logging/receipts must avoid raw secrets.
11. Each direction must be classified separately; A-to-B working does not prove B-to-A working.
12. Each device class must be verified separately because Android, macOS Monterey, macOS Yosemite, printer, TV, and peripheral behavior differ.
```

## Full-mesh meaning

Full mesh does not mean every device has unrestricted access to every other device.

In this architecture, full mesh means each approved node-to-node route must be individually classified as one of:

```text
NO_SSH_ROLE;
SSH_CLIENT_ONLY;
SSH_SERVER_ONLY;
SSH_CLIENT_AND_SERVER;
REACHABLE_AUTHORIZED;
REACHABLE_AUTH_FAILED;
ROUTE_BLOCKED;
HOST_KEY_UNKNOWN;
SERVICE_NOT_RUNNING;
FIREWALL_BLOCKED;
UNVERIFIED.
```

## Device-class notes

```text
MacBook / macOS nodes:
May act as SSH clients. May act as SSH servers if Remote Login / sshd or equivalent is enabled and authorized.

Samsung / Android nodes:
May act as SSH clients through approved terminal/app tooling. May act as SSH servers only if an approved SSH server environment is installed, configured, and authorized.

Printer and smart-TV nodes:
Not assumed to be SSH nodes. They remain peripheral/display devices unless a verified SSH-capable service exists and is authorized.

USB/direct cable links:
Do not create SSH by themselves. SSH over USB requires an IP/tethering/forwarding/debugging route specifically configured and authorized.

Bluetooth:
Does not create SSH by itself. SSH over Bluetooth requires Bluetooth PAN or another IP bridge specifically configured and authorized.
```

## Trust material classification

SSH trust material may include:

```text
SSH host key;
SSH user key;
known_hosts record;
authorized_keys record;
password authentication;
agent-backed authentication;
certificate-backed authentication;
Gatekeeper/Vault controlled credential route.
```

Raw values must not be published in WAVE or Openshared.

## Billing boundary

Local SSH mesh access is not cloud billing by itself. Local SSH mesh access is not AI-provider billing authorization. Local SSH mesh access is not subscription authorization. Local SSH mesh access is not token/quota authorization.

Cloud/provider billing becomes relevant only if an app, agent, chatbot, IDE, terminal runner, model endpoint, connector, plugin, hosted tool, hosted code runner, sync/indexing service, OCR/transcription service, embedding service, vector store, or other provider-controlled service receives, processes, meters, stores, or executes the request.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_RAW_SSH_KEYS: confirmed
NO_PRIVATE_NETWORK_IDENTIFIERS: confirmed
PHASE_2B_SSH_MESH_ARCHITECTURE: active
