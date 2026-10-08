FROM n8nio/runners:2.36.8

USER root

# The base image ships without apk or git: lxml installs from musl wheels and
# teemup from a GitHub tarball.
RUN cd /opt/runners/task-runner-python \
  && uv pip install lxml "teemup @ https://github.com/juniorguru/teemup/archive/refs/heads/main.tar.gz"

USER runner
