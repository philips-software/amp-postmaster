FROM ghcr.io/philips-software/amp-devcontainer-cpp:5.1.4@sha256:46239906460dedb3baf3c33d9275f3de4f17d7a237fc136c2013b021589a6dbd AS builder

HEALTHCHECK NONE

#checkov:skip=CKV_DOCKER_3: this container needs to run as root

WORKDIR /workspace
COPY . /workspace

RUN cmake --preset flex \
 && cmake --build --preset flex

FROM scratch

WORKDIR /flex
COPY --from=builder /workspace/build/flex/postmaster/flex/postmaster.flex /flex/
COPY --from=builder /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libc.so.6

ENTRYPOINT ["/flex/postmaster.flex"]
CMD ["--help"]
