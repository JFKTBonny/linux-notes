# Linux Notes

Practical Linux commands, organized by topic. Every example is copy-paste ready.

## Contents

### 01 · Basics
- [Navigation](01-basics/navigation.md)
- [Files and Directories](01-basics/files-and-directories.md)
- [Viewing Files](01-basics/viewing-files.md)
- [Searching](01-basics/searching.md)
- [Shortcuts](01-basics/shortcuts.md)

### 02 · System
- [Permissions](02-system/permissions.md)
- [Processes](02-system/processes.md)
- [Packages](02-system/packages.md)
- [Services](02-system/services.md)
- [Disk and Memory](02-system/disk-and-memory.md)
- [Users](02-system/users.md)
- [Archives](02-system/archives.md)

### 03 · Networking
- [Overview](03-networking/README.md)
- [Interfaces](03-networking/interfaces.md)
- [Routing](03-networking/routing.md)
- [DNS](03-networking/dns.md)
- [Diagnostics](03-networking/diagnostics.md)
- [Ports](03-networking/ports.md)
- [Configuration](03-networking/configuration.md)
- [Firewall](03-networking/firewall.md)
- [SSH](03-networking/ssh.md)
- [File Transfer](03-networking/file-transfer.md)
- [curl](03-networking/curl.md)
- [Packet Capture](03-networking/packet-capture.md)

### 04 · Text Processing
- [Overview: which tool to use](04-text-processing/README.md)
- [Sample Data](04-text-processing/sample-data/README.md)
- **cut**: [Overview](04-text-processing/cut/README.md) · [Fields](04-text-processing/cut/fields.md) · [Characters and Bytes](04-text-processing/cut/characters.md)
- **sed**: [Overview](04-text-processing/sed/README.md) · [Basics](04-text-processing/sed/basics.md) · [Editing Lines](04-text-processing/sed/editing.md) · [In-place Editing](04-text-processing/sed/in-place.md) · [Advanced](04-text-processing/sed/advanced.md)
- **awk**: [Overview](04-text-processing/awk/README.md) · [Basics](04-text-processing/awk/basics.md) · [Patterns](04-text-processing/awk/patterns.md) · [Built-in Variables](04-text-processing/awk/variables.md) · [Calculations](04-text-processing/awk/calculations.md) · [Programs](04-text-processing/awk/programs.md) · [Scripts](04-text-processing/awk/scripts/)

### Scripts
- [install-network-tools.sh](scripts/install-network-tools.sh) — installs every tool used in the networking section

## Conventions

- `user`, `192.168.1.10`, `eth0` are placeholders: replace them with your values.
- Commands starting with `sudo` need admin rights.
- Tested on Ubuntu/Debian; Fedora/RHEL differences are noted where relevant.

## Contributing

Keep the page format: one heading, one sentence, one code block per command.
