FROM ghcr.io/philips-software/amp-devcontainer-cpp:v6.5.2@sha256:0a4edfc361a8e8b2be6b6e4e06f65bb984aae65c792442a29fdbc85fcc0a466b

ARG SEGGER_JLINK_VERSION=V872a

HEALTHCHECK NONE

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
    # Install Segger JLinkGDBServer
    mkdir -p /opt/segger/jlink \
    && wget --post-data="accept_license_agreement=accepted" -qO - "https://www.segger.com/downloads/jlink/JLink_Linux_${SEGGER_JLINK_VERSION}_$(uname -m | sed 's/aarch64/arm64/').tgz" | tar --strip-components=1 --wildcards -xzC /opt/segger/jlink

RUN apt-get update && apt-get install -y --no-install-recommends libusb-1.0-0=2:1.0.27-1