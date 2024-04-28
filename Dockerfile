FROM quay.io/rockylinux/rockylinux:9
RUN dnf install git-all -y; dnf install tar gzip zip unzip ca-certificates -y
LABEL com.circleci.preserve-entrypoint=true
ENTRYPOINT contacts
