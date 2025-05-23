FROM ghcr.io/philips-software/amp-devcontainer-cpp:v6.0.2@sha256:36afaaa5ba4bc4e9bb471012db9733c26a210e315ddb33600f73bb9532b02a25 AS builder

HEALTHCHECK NONE

#checkov:skip=CKV_DOCKER_3: this container needs to run as root

WORKDIR /workspace
COPY . /workspace

RUN cmake --preset flex \
 && cmake --build --preset flex

RUN apt-get update && apt-get install -y --no-install-recommends net-tools

FROM scratch

HEALTHCHECK --interval=5s --retries=100 CMD netstat -ltn | grep -c ":1234"; if [ 0 != $? ]; then exit 1; fi;

WORKDIR /flex
COPY --from=builder /workspace/build/flex/postmaster/flex/postmaster.flex /flex/
COPY --from=builder /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libc.so.6
COPY --from=builder /bin/sh /bin/sh
COPY --from=builder /usr/bin/netstat /usr/bin/netstat
COPY --from=builder /usr/bin/grep /usr/bin/grep
COPY --from=builder /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libselinux.so.1
COPY --from=builder /lib/x86_64-linux-gnu/libpcre2-8.so.0 /lib/x86_64-linux-gnu/libpcre2-8.so.0
COPY --from=builder /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2

ENTRYPOINT ["/flex/postmaster.flex"]
CMD ["--help"]
