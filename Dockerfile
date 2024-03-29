FROM debian:stable-slim
RUN apt-get update && apt-get install -y build-essential \
  gdb vim less libc6-dbg valgrind afl++ libfuzzer-16-dev file curl \
  python-is-python3 python3-pip python3.11-venv \
  meson cmake ninja-build pkg-config autoconf automake libtool
RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN echo "export LC_CTYPE=C.UTF-8" >> /etc/bash.bashrc
WORKDIR /build
CMD ["/bin/bash"]
