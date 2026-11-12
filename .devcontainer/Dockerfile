FROM ghcr.io/philips-software/amp-devcontainer-cpp:9.1.0@sha256:1b2a270d68fe3c4891dc1a2dc607a80e3c68e2609d26f0b4a09663989a69d0b5

ARG SEGGER_JLINK_VERSION=V872a

HEALTHCHECK NONE

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
    # Install Segger JLinkGDBServer
    mkdir -p /opt/segger/jlink \
    && wget --post-data="accept_license_agreement=accepted" -qO - "https://www.segger.com/downloads/jlink/JLink_Linux_${SEGGER_JLINK_VERSION}_$(uname -m | sed 's/aarch64/arm64/').tgz" | tar --strip-components=1 --wildcards -xzC /opt/segger/jlink

RUN \
    # Install libusb
    apt-get update && apt-get install -y --no-install-recommends libusb-1.0-0=2:1.0.27-1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*