FROM n8nio/runners:2.36.8

USER root

# Install system libs for lxml (wheels should cover most cases, but this is safer).
RUN apk add --no-cache \
    git \
    libxml2-dev \
    libxslt-dev

RUN cd /opt/runners/task-runner-python \
  && uv pip install lxml "git+https://github.com/juniorguru/teemup.git"

USER runner
