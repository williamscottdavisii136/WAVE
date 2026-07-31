# Phase 2B Wi-Fi / Xfinity Gateway / Local Discovery / Bluetooth Coexistence Architecture Addendum

## Purpose

This append-only addendum records the owner-described Wi-Fi architecture needed for all owner-controlled devices to connect through the home-network gateway and see/connect to each other across Wi-Fi, Bluetooth, SSH, USB/direct-link, and local discovery routes.

This is a public-safe record. It does not publish SSID values, Wi-Fi passwords, router admin credentials, IP addresses, MAC addresses, Bluetooth keys, SSH keys, certificates, tokens, cookies, sessions, phone numbers, IMEI values, serial numbers, private legal materials, or operational secrets.

## Public-safe network description

```text
HOME INTERNET SERVICE CLASS: cable ISP connection, owner-stated
HOME GATEWAY CLASS: Xfinity cable modem / gateway or cable-modem-attached router, owner-stated
PRIVATE WI-FI LABEL: withheld from public record
DEVICE CONNECTIVITY: owner states phones, Macs, printer, smart TV, removable storage when host-mounted, and cable-connected devices can connect through owner-controlled routes
INTERDEVICE TOPOLOGY: owner-controlled local interdevice connectivity / full-mesh intent
```

## Core architecture distinction

Bluetooth and Wi-Fi are separate radio and protocol layers.

```text
WI-FI PATH:
Device Wi-Fi radio -> private Wi-Fi access point / gateway -> local LAN -> optional internet route through cable ISP.

BLUETOOTH PATH:
Device Bluetooth radio -> paired or visible nearby Bluetooth device -> profile-specific service such as pairing, audio, file transfer, PAN/tethering, accessory control, or local device discovery.

SSH PATH:
SSH client -> IP route over Wi-Fi, Ethernet, USB-tethered IP, Bluetooth PAN, or another authorized IP path -> SSH server on target device.
```

Bluetooth does not normally access the Xfinity cable modem or Wi-Fi gateway directly. Bluetooth may coexist with Wi-Fi, pair devices locally, or provide a Bluetooth PAN/tethering path if a host device is configured to bridge or share network access. That bridge/share configuration must be separately verified.

## What must be in place for Wi-Fi to work across all devices

```text
1. Active cable internet service or active local gateway/LAN function.
2. Powered and operational cable modem / gateway / router.
3. Wi-Fi radio enabled on the gateway or attached access point.
4. Private Wi-Fi network broadcast or otherwise joinable by approved devices.
5. Compatible Wi-Fi band and security mode on each device.
6. Correct Wi-Fi credentials or owner-approved join mechanism.
7. DHCP or static IP configuration for each device.
8. DNS and default gateway configuration where internet access is required.
9. Same LAN/subnet or routed LAN segments where device-to-device access is required.
10. AP/client isolation disabled where devices must see each other.
11. Local firewall rules allowing approved discovery and service traffic.
12. Device discovery protocols available where needed, such as mDNS/Bonjour, SSDP/UPnP, printer discovery, app-specific discovery, or direct IP addressing.
13. SSH service enabled on target devices where SSH is intended.
14. SSH client available on initiating devices where SSH is intended.
15. Owner-approved authentication for SSH, file transfer, printer access, media access, or app/device control.
16. No guest-network isolation blocking local-device visibility.
17. No router policy, parental-control rule, VPN profile, private relay, security app, or firewall rule blocking local discovery or interdevice traffic.
18. Sufficient Wi-Fi signal, range, channel availability, and no material radio interference.
```

## What it means for all devices to see each other

```text
ROUTER CLIENT VISIBILITY:
Gateway sees client devices attached to the LAN/Wi-Fi network.

DEVICE DISCOVERY VISIBILITY:
Devices discover one another by mDNS/Bonjour, SSDP, printer discovery, app discovery, Bluetooth discovery, paired-device lists, or direct IP reachability.

SERVICE VISIBILITY:
A specific service is reachable, such as SSH, printer service, file transfer, screen/media service, app bridge, ADB if enabled, or local web service.

AUTHENTICATED ACCESS:
A reachable service grants access only after local trust, account login, passcode approval, SSH key/password, pairing, device trust prompt, app authorization, or another owner-approved method.
```

Visibility is not the same thing as authorization. A device may see another device without being allowed to access files, execute commands, transfer credentials, use cloud resources, or consume AI-provider services.

## Bluetooth and Wi-Fi coexistence classification

```text
BLUETOOTH + WI-FI COEXISTENCE:
Device uses Wi-Fi for LAN/internet access while Bluetooth remains available for pairing, peripheral control, file transfer, audio, Bluetooth PAN, or local device discovery.

BLUETOOTH PAN / TETHERING:
Bluetooth may carry IP traffic only if a paired host device exposes a Bluetooth network-sharing/tethering profile and the other device joins it. This is separate from ordinary Wi-Fi access and must be specifically verified.

BLUETOOTH ACCESS TO WI-FI GATEWAY:
Not assumed. A Bluetooth device does not automatically access or control the Wi-Fi gateway merely because both Bluetooth and Wi-Fi are enabled.
```

## Phase 2B study requirement

For each AI-agent or AI-chatbot candidate using the home-network route, the matrix must classify:

```text
origin device;
destination device;
Wi-Fi route involved yes/no;
Bluetooth route involved yes/no;
Bluetooth PAN/tethering involved yes/no;
SSH route involved yes/no;
USB/direct physical route involved yes/no;
local discovery protocol involved;
router/gateway involvement;
LAN-only route yes/no;
internet/provider route yes/no;
cloud/provider control-plane contact yes/no;
authentication class;
certificate/trust class;
credential store class;
billing/quota/entitlement check yes/no;
code execution local/remotely hosted/unknown;
local/offline route availability;
MCP/BYOK/Gatekeeper-Vault route availability;
private value published no.
```

## Billing boundary

Wi-Fi connectivity, cable modem access, Bluetooth pairing, Bluetooth visibility, SSH reachability, USB direct links, and local discovery are connection states. They are not by themselves AI-provider billing authorization, subscription authorization, token/quota authorization, credential-transfer authorization, certificate-transfer authorization, or third-party cloud-service authorization.

Cloud/provider billing becomes relevant only when an application, agent, chatbot, IDE, terminal runner, sync/backup/indexing service, model endpoint, embedding/vector service, OCR/transcription service, hosted code runner, connector, plugin, marketplace, or other provider-controlled service receives, processes, meters, stores, or executes the request.

PUBLIC_ONLY: confirmed
NO_SECRET_TRANSFER: confirmed
NO_PRIVATE_NETWORK_IDENTIFIER_PUBLICATION: confirmed
NO_RAW_BLUETOOTH_OR_SSH_KEY_PUBLICATION: confirmed
PHASE_2B_WIFI_GATEWAY_DISCOVERY_ARCHITECTURE: active
