FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Provisioner"

ARG TARGETPLATFORM

COPY ./bin/csi-provisioner/${TARGETPLATFORM} csi-provisioner
ENTRYPOINT ["/csi-provisioner"]
