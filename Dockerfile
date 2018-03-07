ARG DOCKER_REGISTRY=docker.io
ARG DOCKER_REPO=qspack
ARG FROM_IMG_NAME="ubuntu-libtool"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${DOCKER_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

ARG HWLOC_VERSION=1.11.4
ENV HWLOC_VERSION=${HWLOC_VERSION}
LABEL qnib.spack.heloc.version=${HWLOC_VERSION}
RUN /usr/local/src/spack/bin/spack install --no-checksum hwloc@${HWLOC_VERSION} \
            ^libtool@${LIBTOOL_VERSION}
