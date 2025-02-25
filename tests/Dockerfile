FROM ubuntu:24.04

RUN apt-get update && apt-get install -y ansible perl sudo

RUN deluser --remove-home ubuntu && \
  useradd -u 1000 -ms /bin/bash test && \
  echo "test ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/test

USER test

ENV USER=test

WORKDIR /home/test

COPY --chown=test:test ./run.sh /home/test/run-tests.sh

RUN chmod +x /home/test/run-tests.sh
