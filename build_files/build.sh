#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#dnf5 install -y tmux

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

#systemctl enable podman.socket

dnf5 -y config-manager addrepo --id=mozilla --set=baseurl=https://packages.mozilla.org/rpm/firefox --set=gpgkey=https://packages.mozilla.org/rpm/firefox/signing-key.gpg --set=gpgcheck=1 --set=repo_gpgcheck=0 --set=priority=10
dnf5 -y install firefox
dnf5 -y install thunderbird
dnf5 -y config-manager disable mozilla

dnf5 -y copr enable celenity/copr
dnf5 -y install phoenix
dnf5 -y install dove
dnf5 -y copr disable celenity/copr

dnf5 -y config-manager addrepo --from-repofile=https://repo.secureblue.dev/secureblue.repo
dnf5 -y install trivalent.x86_64
dnf5 -y config-manager disable secureblue
