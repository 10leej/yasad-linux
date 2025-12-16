FROM quay.io/fedora/fedora-bootc:43
RUN dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
# RUN dnf config-manager setopt fedora-cisco-openh264.enabled=1
RUN dnf install -y rpmfusion-\*-appstream-data
RUN dnf install -y vim htop iftop iotop tmux && dnf clean all 
