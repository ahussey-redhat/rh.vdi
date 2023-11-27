#!/bin/bash
set -euxo pipefail

echo ">>> Installing Fedora Workstation packages"
dnf -y groupinstall "Fedora Workstation"
